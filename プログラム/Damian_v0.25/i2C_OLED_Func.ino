void setup_i2c() {
  Wire.beginTransmission(OLED_ADDR);
  Wire.write(B00000000); //コントロールバイト, Co bit = 0 (continue), D/C# = 0 (command)
  Wire.write(0xAE); //画面OFF
  Wire.write(0xA8); //複数セット Ratio  0xA8, 0x3F
  Wire.write(B00111111); //64MUX
  Wire.write(0xD3); //画面オフセット設定 0xD3, 0x00
  Wire.write(0x00);
  Wire.write(0x40); //画面の開始点設定 0x40
  Wire.write(0xA0); //セグメントの再描画 0xA0/0xA1
  Wire.write(0xC0); //COM出力スキャン方向 0xC0,/0xC8
  Wire.write(0xDA); //COMピンのハードウェア設定 0xDA, 0x02
  Wire.write(B00010010);
  Wire.write(0x81); //コントラスト設定 0x81, 0x7F（明るさ設定）
  Wire.write(255); //0-255
  Wire.write(0xA4); //ディスプレイ全体ON
  Wire.write(0xA6); //画面 0xA6, 画面逆向き 0xA7
  Wire.write(0xD5); //ディスプレイクロック設定 0xD5, 0x80
  Wire.write(B10000000);
  Wire.write(0x2E); //スクロール表示解除
  Wire.write(0x20); //メモリ割り当てモード
  Wire.write(0x10); //ページ割り当てモード
  Wire.write(0x21); //水平位置割り当て設定
  Wire.write(0); //水平開始位置はここで決める(0～127)
  Wire.write(127); //画面をフルに使う
  Wire.write(0x22); //ページ割り当て
  Wire.write(0); //垂直開始位置（ページ）
  Wire.write(7); //垂直終了位置（ページ）
  Wire.write(0x8D); //チャージポンプレギュレータ設定を有効化 0x8D, 0x14
  Wire.write(0x14);
  Wire.write(0xAF); //画面ON 0xAF
  Wire.endTransmission();
}

void Display_Black() {
  byte i, j, k;

  for (i = 0; i < 8; i++) { //8ページ分塗りつぶす
    Wire.beginTransmission(OLED_ADDR);
    Wire.write(B10000000); //control byte, Co bit = 1 (One command only), D/C# = 0 (command)
    Wire.write(0xB0 | i); //set page start address←垂直開始位置はここで決める8bitで１ページ(B0～B7)
    Wire.endTransmission();

    for (j = 0; j < 16; j++) { //column = 8byte x 16 ←8バイト毎に水平に連続で16個表示
      Wire.beginTransmission(OLED_ADDR);
      Wire.write(B01000000); //control byte, Co bit = 0 (continue), D/C# = 1 (data)
      for (k = 0; k < 8; k++) { //なぜか一気に128列まで出力できなかったので、8byte毎にした
        Wire.write(0x00);
      }
      Wire.endTransmission();
    }
    yield();
  }
}
void Display_Character_16x8(byte* array, byte x, byte y) {
  for (int j = 0; j < 2; j++) {
    Wire.beginTransmission(OLED_ADDR);
    Wire.write(B00000000); //control byte, Co bit = 0 (continue), D/C# = 0 (command)
    Wire.write(0xB0 | y * 2 + j); //垂直開始位置はここで決める(B0～B7)
    Wire.write(0x21);//set column addres
    Wire.write(0x00 | x * 8);//水平開始位置はここで決める(0～126)
    Wire.write(B01111111);//Column Stop Address　画面をフルに使う
    Wire.endTransmission();
    Wire.beginTransmission(OLED_ADDR);
    Wire.write(B01000000); //control byte, Co bit = 0 (continue), D/C# = 1 (data)
    if (j == 0) {
      for (int k = 0; k < 8; k++) {
        byte get_char = pgm_read_byte_near(&array[k * 2 + 1]); //文字を1バイト読み出す
        Wire.write(get_char);
      }
    } else {
      for (int k = 0; k < 8; k++) {
        byte get_char = pgm_read_byte_near(&array[k * 2]); //文字を1バイト読み出す
        Wire.write(get_char);
      }
    }
    Wire.endTransmission();
  }
}

void Display_Character_16x16(byte* array, byte x, byte y) {
  for (int j = 0; j < 2; j++) {
    Wire.beginTransmission(OLED_ADDR);
    Wire.write(B00000000); //コントロールバイト, Co bit = 0 (continue), D/C# = 0 (command)
    Wire.write(0xB0 | y * 2 + j); //垂直開始位置はここで決める(B0～B7)
    Wire.write(0x21);//set column addres
    Wire.write(0x00 | x * 16);//水平開始位置はここで決める(0～126)
    Wire.write(B01111111);//Column Stop Address　画面をフルに使う
    Wire.endTransmission();
    Wire.beginTransmission(OLED_ADDR);
    Wire.write(B01000000); //control byte, Co bit = 0 (continue), D/C# = 1 (data)
    if (j == 0) {
      for (int k = 0; k < 16; k++) {
        byte get_char = pgm_read_byte_near(&array[k * 2 + 1]); //文字を1バイト読み出す
        Wire.write(get_char);
      }
    } else {
      for (int k = 0; k < 16; k++) {
        byte get_char = pgm_read_byte_near(&array[k * 2]); //文字を1バイト読み出す
        Wire.write(get_char);
      }
    }
    Wire.endTransmission();
  }
}

void Oled_Print(String str, int row) { //String変数、y軸
  int str_len = str.length();
  if (str_len > 16) { //17文字以上であれば
    str_len = 16; //16文字だけ表示させるようにする
  }
  for (int i = 0; i < str_len; i++) {
    if (' ' <= str[i] && str[i] <= '~') { //ASCIIコードで、スペースからチルダまでのときにディスプレイに出力する（制御文字は除く）
      Display_Character_16x8(ASCII_16x8[str[i] - 0x20], i, row);
    }
  }
}
