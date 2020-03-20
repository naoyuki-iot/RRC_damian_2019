#include <Wire.h>
#include <avr/pgmspace.h>   // 配列をフラッシュメモリからロードするためのもの
#include <TimerOne.h> //tone関数とバッティングするのでMstimer2(Timer2)でなくTimer1を使用
#define OLED_ADDR (0x3C) //OLED address 製品に記載の数値は7bitなので、8bitに変換して1bit右へずらした値(78>>3c)

#include <I2Cdev.h>
#include <MPU6050_9Axis_MotionApps41.h>
#include <helper_3dmath.h>
#include <MPU6050.h>
#include <MPU6050_6Axis_MotionApps20.h>//ジャイロ・加速度のライブラリ


#include <SPI.h>//音源モジュール(YMF825)用
/*音源モジュールの接続
   RST_N- Pin9   
   SS   - Pin10
   MOSI - Pin11
   MISO - Pin12
   SCK  - Pin13
 */
#define OUTPUT_power 0//0 :5V 1:3.3V//音源モジュール動作電圧設定（Arduinoは基本的に5V）

#define BUTTON_CHANGE_COLOR 3 //3番ピンにボタンを押すと目の色が変わるスイッチを接続 
#define BUTTON_CHANGE_HZ 4 //4番ピンにボタンを押すとブザーの周波数が変わるスイッチを接続
#define LED_R 6 //フルカラーLED赤を6番ピンに接続
#define LED_G 7 //フルカラーLED緑を7番ピンに接続
#define LED_B 8 //フルカラーLED青を8番ピンに接続

#define NO_USE_ANALOGPIN0 A0
#define NO_USE_ANALOGPIN1 A1
#define NO_USE_ANALOGPIN2 A2
#define NO_USE_ANALOGPIN3 A3//未使用のアナログピンを乱数生成に使う
#define BUTTON_ON LOW
#define BUTTON_OFF HIGH

enum {BLACK, RED, GREEN, YELLOW, BLUE, PURPLE, LIGHTBLUE, WHITE}; //RGB順、黒000 赤001 緑010 黄011 青100 紫101 水110 白111(BGR):enumは列挙型変数であり、配列内の先頭の文字から順々に0,1,2...と定める,
const char * const color_led_name[] = {"Black", "Red", "Green", "Yellow", "Blue", "Purple", "Water", "White"}; //表示用(2017)const:定数,char:文字列を入れる型
uint8_t color_led; //顔の色,unit8_t:8bitの非負整数を格納する型(16なら16bit)

const uint16_t  hex[50][3]={
  {0,0,0},
  {196,0x23,0x17},
  {208,0x23,0x37},
  {220,0x23,0x59},
  {233,0x23,0x7D},
  {247,0x2B,0x22},
  {262,0x14,0x65},
  {277,0x14,0x7A},
  {294,0x1C,0x11},
  {311,0x1C,0x29},
  {330,0x1C,0x42},
  {349,0x1C,0x5D},
  {370,0x1C,0x79},
  {392,0x24,0x17},
  {415,0x24,0x37},
  {440,0x24,0x59},
  {466,0x24,0x7D},
  {494,0x2C,0x22},
  {523,0x15,0x65},
  {554,0x15,0x7A},
  {587,0x1D,0x11},
  {622,0x1D,0x29},
  {659,0x1D,0x42},
  {699,0x1D,0x5D},
  {740,0x1D,0x79},
  {784,0x25,0x17},
  {831,0x25,0x37},
  {880,0x25,0x59},
  {932,0x25,0x7D},
  {987,0x2D,0x22},
  {1047,0x16,0x65},
  {1109,0x16,0x7A},
  {1175,0x1E,0x11},
  {1244,0x1E,0x29},
  {1318,0x1E,0x42},
  {1397,0x1E,0x5D},
  {1480,0x1E,0x79},
  {1568,0x26,0x17},
  {1661,0x26,0x37},
  {1760,0x26,0x59},
  {1865,0x26,0x7D},
  {1976,0x2E,0x22},
  {2093,0x17,0x65},
  {2218,0x17,0x7A},
  {2349,0x1F,0x11},
  {2489,0x1F,0x29},
  {2637,0x1F,0x42},
  {2794,0x1F,0x5D},
  {2960,0x1F,0x79},
  {3136,0x27,0x17}
  };//音源周波数パラメータ：{周波数,パラメータ1,パラメータ2}の順
  
const uint16_t buzzer_Hz_pattern[]={
      hex[0][0],hex[1][0],hex[2][0],hex[3][0],hex[4][0],hex[5][0],hex[6][0],hex[7][0],hex[8][0],hex[9][0],hex[10][0],
      hex[11][0],hex[12][0],hex[13][0],hex[14][0],hex[15][0],hex[16][0],hex[17][0],hex[18][0],hex[19][0],hex[20][0],
      hex[21][0],hex[22][0],hex[23][0],hex[24][0],hex[25][0],hex[26][0],hex[27][0],hex[28][0],hex[29][0],hex[30][0],
      hex[31][0],hex[32][0],hex[33][0],hex[34][0],hex[35][0],hex[36][0],hex[37][0],hex[38][0],hex[39][0],hex[40][0],
      hex[41][0],hex[42][0],hex[43][0],hex[44][0],hex[45][0],hex[46][0],hex[47][0],hex[48][0],hex[49][0],hex[50][0]
      };//ブザーの周波数パターン生成のために多次元配列の1列目の要素を取り出す
      
const uint8_t buzzer_Hz_num = sizeof(buzzer_Hz_pattern) / sizeof(buzzer_Hz_pattern[0]); //ブザー周波数のパターンの数
uint8_t randomnumber_Hz;//Generateにあるローカル変数をグローバル変数にした
uint16_t buzzer_Hz = hex[1][0]; //ブザーの周波数(2018)
uint8_t buzzer_pattern[12] = {0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1}; //ブザーパターン、000はスタートビット
//uint8_t buzzer_pattern[12] = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}; //ブザーパターン、000はスタートビット(テスト用)
//uint8_t buzzer_pattern[12] = {0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1}; //ブザーパターン、000はスタートビット(テスト用)

const uint8_t pattern_num = sizeof(buzzer_pattern); //ブザーのビット数:sizeof(x)は変数xのメモリサイズを調べるもの

//ジャイロ、加速度の設定//
MPU6050 mpu;
#define OUTPUT_READABLE_MANY
bool blinkState = false;

// MPU control/status vars
bool dmpReady = false;  // set true if DMP init was successful
uint8_t mpuIntStatus;   // holds actual interrupt status byte from MPU
uint8_t devStatus;      // return status after each device operation (0 = success, !0 = error)
uint16_t packetSize;    // expected DMP packet size (default is 42 bytes)
uint16_t fifoCount;     // count of all bytes currently in FIFO(=First In First Out)
uint8_t fifoBuffer[64]; // FIFO storage buffer

// orientation/motion vars
Quaternion q;           // [w, x, y, z]         quaternion container
VectorInt16 aa;         // [x, y, z]            accel sensor measurements
VectorInt16 aaReal;     // [x, y, z]            gravity-free accel sensor measurements
VectorInt16 aaWorld;    // [x, y, z]            world-frame accel sensor measurements
VectorFloat gravity;    // [x, y, z]            gravity vector
float euler[3];         // [psi, theta, phi]    Euler angle container
float ypr[3];           // [yaw, pitch, roll]   yaw/pitch/roll container and gravity vector

// packet structure for InvenSense teapot demo
uint8_t teapotPacket[14] = { '$', 0x02, 0, 0, 0, 0, 0, 0, 0, 0, 0x00, 0x00, '\r', '\n' };
volatile bool mpuInterrupt = false;     // indicates whether MPU interrupt pin has gone high

void dmpDataReady() {
  mpuInterrupt = true;
}

void setup() {
  Serial.begin(115200);//シリアル通信開始
  
  //音源モジュール
  SPI.setBitOrder(MSBFIRST);//SPIのビット設定:MSBFIRST(Most-Significant Bit FIRST)
  SPI.setClockDivider(SPI_CLOCK_DIV8);//SPIクロック設定(分周値=8)
  SPI.setDataMode(SPI_MODE0);//SPI転送モード設定
  SPI.begin();//音源モジュールの通信開始
  
  Wire.begin();//I2C通信の開始
 
 //ジャイロ、加速度
  while (!Serial);
  mpu.initialize();
  while (Serial.available() && Serial.read()); // empty buffer
  devStatus = mpu.dmpInitialize();
  if (devStatus == 0) {
    Serial.println(F("Enabling DMP..."));
    mpu.setDMPEnabled(true);
    Serial.println(F("Enabling interrupt detection (Arduino external interrupt 0)..."));
    attachInterrupt(0, dmpDataReady, RISING);
    mpuIntStatus = mpu.getIntStatus();
    Serial.println(F("DMP ready! Waiting for first interrupt..."));
    dmpReady = true;
    packetSize = mpu.dmpGetFIFOPacketSize();
  } else {
    while (1) {
      Serial.print(F("DMP Initialization failed (code "));
      Serial.print(devStatus);
      Serial.println(F(")"));
    }
  }

  setup_i2c();//I2C接続のOLED液晶に状態表示を行う関数："i2C_OLED_Func"タブ参照
  Display_Black();//上記のOLED液晶の初期化用関数："i2C_OLED_Func"タブ参照
  
  randomSeed(analogRead(NO_USE_ANALOGPIN0));
  randomSeed(analogRead(NO_USE_ANALOGPIN1)); 
  randomSeed(analogRead(NO_USE_ANALOGPIN2)); 
  randomSeed(analogRead(NO_USE_ANALOGPIN3));//未接続のアナログピンを用いて毎回乱数列を変化させる（ブザー周波数のパターンが多いため使うアナログピンを1つ→4つに）
  
  pinMode(LED_R, OUTPUT);
  pinMode(LED_G, OUTPUT);
  pinMode(LED_B, OUTPUT);//LED3つ出力設定
  pinMode(BUTTON_CHANGE_COLOR, INPUT_PULLUP);
  pinMode(BUTTON_CHANGE_HZ, INPUT_PULLUP); //LEDと周波数を変えるスイッチ2つをプルアップ接続

  pinMode(9,OUTPUT);
  pinMode(10,OUTPUT);
  set_ss_pin(HIGH);//音源モジュール設定
  
  color_led = GenerateLedColor(); //LEDの色を生成
  buzzer_Hz = GenerateBuzzerHz(); //ブザー周波数を生成
  GenerateBuzzerPattern(); //ブザーパターンを生成
  CheckSerialMonitor(); //シリアルモニターに値を表示する
  Timer1.initialize(500000UL); //500ms(500000us)ごとに呼び出す
  Timer1.attachInterrupt(BeepBuzzer); //割込みで呼び出す関数
  
  init_825();
  set_tone();
  set_ch();  //"YMF825_Func"参照
}

void loop() {
  FlushLed(); //LEDを光らせる
  //DisplayState(); //I2C接続のOLED液晶に現在の状態を表示する
  ChangePattern(); //LED,ブザーのパターンを変更する
  MPU6050_Func();//加速度・ジャイロの関数
}
