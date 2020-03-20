PROGMEM const byte symbol_square_white_16x8[] = {
  B00000000, B00000000,
  B01111111, B11111110,
  B01000000, B00000010,
  B01000000, B00000010,
  B01000000, B00000010,
  B01000000, B00000010,
  B01111111, B11111110,
  B00000000, B00000000,
};

PROGMEM const byte symbol_square_black_16x8[] = {
  B00000000, B00000000,
  B01111111, B11111110,
  B01111111, B11111110,
  B01111111, B11111110,
  B01111111, B11111110,
  B01111111, B11111110,
  B01111111, B11111110,
  B00000000, B00000000,
};

const byte *symbol_16x8[] = {
  symbol_square_white_16x8, symbol_square_black_16x8,
};

