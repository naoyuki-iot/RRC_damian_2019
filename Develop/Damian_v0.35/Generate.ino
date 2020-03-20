uint8_t GenerateLedColor(void) { //LEDの色を生成
  return random(8); //8色の中からランダムに決定
}

uint16_t GenerateBuzzerHz(void) { //圧電ブザーの周波数を生成
  randomnumber_Hz = random(0, buzzer_Hz_num); //ブザー周波数のパターン個数だけの乱数を生成
  return buzzer_Hz_pattern[randomnumber_Hz];
}

void GenerateBuzzerPattern(void) { //圧電ブザーのパターンを生成
  for (uint8_t i = 4; i < pattern_num - 1; i++)  { //最初の4ビット、最終ビットは固定
    if (!(buzzer_pattern[i - 2] || buzzer_pattern[i - 1])) {
      buzzer_pattern[i] = 1; //00と続くと次は1（スタートビットとかぶらないために）
    }
    else {
      buzzer_pattern[i] = random(2);
    }
  }
  buzzer_pattern[pattern_num - 1] = 1; //最終ビットはONで固定（OFFだとスタートビットとかぶるため）
}
