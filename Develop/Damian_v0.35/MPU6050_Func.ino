void MPU6050_Func(){
  static int t = 0;
  t++;
  
  if (!dmpReady) return;
  while (!mpuInterrupt && fifoCount < packetSize) {
  }
  mpuInterrupt = false;
  mpuIntStatus = mpu.getIntStatus();
  fifoCount = mpu.getFIFOCount();
  if ((mpuIntStatus & 0x10) || fifoCount == 1024) {
    mpu.resetFIFO();
    Serial.println(F("FIFO overflow!"));
    mpu.resetFIFO();
  } else if (mpuIntStatus & 0x02) {
    while (fifoCount < packetSize) fifoCount = mpu.getFIFOCount();
    mpu.getFIFOBytes(fifoBuffer, packetSize);
    fifoCount -= packetSize;

    // display all
    mpu.dmpGetQuaternion(&q, fifoBuffer);
    mpu.dmpGetAccel(&aa, fifoBuffer);
    mpu.dmpGetGravity(&gravity, &q);
    mpu.dmpGetYawPitchRoll(ypr, &q, &gravity);
    int16_t gyro[3];
    mpu.dmpGetGyro(gyro, fifoBuffer);
    mpu.dmpGetLinearAccel(&aaReal, &aa, &gravity);
    mpu.dmpGetLinearAccelInWorld(&aaWorld, &aaReal, &q);

    //////////////////////PCからデータ受信したとき///////////////////////////
    static int mode = 0;
    if (Serial.available() > 0) { //受信データが存在する場合
      int Pc_ComingByte = 0;
      Pc_ComingByte  = Serial.read();//受信データの読み込み
      Serial.read();
      mode ++;
    }
    if (mode % 2 == 1) {
      CheckSerialMonitor();
    }
    else {
      //////////////////////PCからデータ受信しなかったとき///////////////////////////

      if (t > 7) {
        t = 0;
        if (( abs(gravity.x) >= abs(gravity.y) ) && ( abs(gravity.x) >= abs(gravity.z))) { //一番傾きが地上に近い値を選定する
          Serial.print("x:");
          Serial.print("\t");
          Serial.println(aaWorld.x);
        }
        else if (( abs(gravity.y) >= abs(gravity.x) ) && ( abs(gravity.y) >= abs(gravity.z))) {
          Serial.print("y:");
          Serial.print("\t");
          Serial.println(aaWorld.y);
        }
        else {
          Serial.print("z:");
          Serial.print("\t");
          Serial.println(aaWorld.z);

        }
        Serial.print("@");//終了信号...
        Serial.print("~");//開始信号...
      }
      //      Serial.print(t);//確認用
    }
    ////////////////////////////////////////////////////
  }
}
