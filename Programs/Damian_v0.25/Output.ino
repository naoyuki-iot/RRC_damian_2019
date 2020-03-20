extern const byte *ASCII_16x8[]; //添字は0~94//externは複数のソース間で変数を使うための型,byte=バイト(8bit=1byte)
extern const byte *symbol_16x8[]; //添字は0~1

void FlushLed(void) {
  digitalWrite(LED_R, ~color_led & 0b001);
  digitalWrite(LED_G, (~color_led >> 1) & 0b001);
  digitalWrite(LED_B, (~color_led >> 2) & 0b001); //ビットマスクして1か0か判定
}

void BeepBuzzer(void) {
  static uint8_t counter = 0;
  if (!buzzer_Hz) {
    keyoff();
    return; //設定値が0Hzのときは鳴らさない
  }
  if (buzzer_pattern[counter]) {
    keyon(hex[randomnumber_Hz][1],hex[randomnumber_Hz][2]);
  }
  else {
    keyoff();
  }

  counter++; //ならした後にパターンを1つすすめる
  counter %= 12; //常に0~11を取るようにする
}

//※X+=Y; は X=X+Y; のこと
//Stringはcharよりも複雑な操作が可能。charよりも多くメモリを消費する。
void DisplayState(void) {
  String led = "Color : ";
  led += color_led_name[color_led];//変数ledの後に何色(black,red,green...)かを入れてledに戻す
  for (int i = led.length(); i < 16; i++) { //16文字目までの空きに空白(SP)を入れる(led.length()は変数ledの文字数を返す関数)
    led += ' ';
  }

  String Hz = "Buzzer Hz:";
  Hz += buzzer_Hz;
  Hz += "Hz";//変数Hz内の"Buzzer"の後にどの周波数(0,200,300...)かを入れ、その後に"Hz"を加えて戻す
  for (int i = Hz.length(); i < 16; i++) { //16文字目までの空きに空白(SP)を入れる(Hz.length()は変数Hzの文字数を返す関数)
    Hz += ' ';
  }

  String pattern1 = "Buzzer pattern:";
  String pattern2 = "";
  for (int i = 0; i < pattern_num; i++) {
    pattern2 += buzzer_pattern[i];
  }
  String output[] = {
    led,
    Hz,
    pattern1,
    pattern2,
  };
  int row = sizeof(output) / sizeof(output[0]);
  if (row > 4) { //文字列が5行以上あったら
    row = 4; //4行だけ表示させるようにする
  }
  for (int i = 0; i < row; i++) {
    if (i == 3) {
      for (int j = 0; j < pattern2.length(); j++) {
        if (pattern2[j] == '0') {
          Display_Character_16x8(symbol_16x8[0], j, i);
        }
        else {
          Display_Character_16x8(symbol_16x8[1], j, i);
        }
      }
    }
    else {
      Oled_Print(output[i], i);
    }
  }
}

void ChangePattern(void) { //LED,ブザーを変更
  static boolean old_buttonstate_led = BUTTON_OFF;//boolean:真偽（True or False）の判断を行う型 static:静的（変数の値を固定しておくときに使う）
  boolean buttonstate_led = digitalRead(BUTTON_CHANGE_COLOR);
  if ((buttonstate_led == BUTTON_ON) && (old_buttonstate_led == BUTTON_OFF)) {
    delay(10);
    color_led++;
    color_led %= 8;
    Serial.print("Change Face Color : ");
    Serial.println(color_led_name[color_led]);
  }
  old_buttonstate_led = buttonstate_led;

  static int8_t Hz_pattern = (buzzer_Hz / 250) - 1;
  if (Hz_pattern == -1) {
    Hz_pattern = 0;
  }
  static boolean old_buttonstate_Hz = BUTTON_OFF;
  boolean buttonstate_Hz = digitalRead(BUTTON_CHANGE_HZ);
  if ((buttonstate_Hz == BUTTON_ON) && (old_buttonstate_Hz == BUTTON_OFF)) {
    delay(10);
    Hz_pattern++;
    Hz_pattern %= buzzer_Hz_num;
    buzzer_Hz = buzzer_Hz_pattern[Hz_pattern];
    Serial.print("Change Buzzer Hz : ");
    Serial.print(buzzer_Hz);
    Serial.println(" Hz ");
  }
  old_buttonstate_Hz = buttonstate_Hz;
}

void CheckSerialMonitor(void) { //シリアルモニターに値を表示する
  Serial.print("Face Color : ");
  Serial.println(color_led_name[color_led]);
  Serial.print("Buzzer Hz : ");
  Serial.print(buzzer_Hz);
  Serial.println(" Hz ");
  Serial.print("Buzzer pattern (0 : OFF , 1 : ON) : ");
  for (uint8_t i = 0; i < pattern_num; i++) {
    Serial.print(buzzer_pattern[i]);
  }
  Serial.println("");
}

void NeckPositionState(void){
    int stick_x = analogRead(A3);
    int stick_y = analogRead(A2);
    Serial.print("X:");
    Serial.print(stick_x, DEC);
    Serial.print(",Y:");
    Serial.println(stick_y, DEC);
    delay(10);
}
