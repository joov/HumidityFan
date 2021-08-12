// Defines for DHT
#include <SimpleDHT.h>

//Declaring digital pin no 2 as the dht11 data pin

int pinDHT11_inner = 3;
int pinDHT11_outer = 4;
int DHTpower = 2;
int fanPower = 13;

float a = 7.5;
float b = 237.3;
float c = 6.1078;

int minTemp=5;

unsigned long fanTime=1500000;    // 10 minutes
unsigned long delayTime=1800000-fanTime; // 30 minutes-fanTime


SimpleDHT11 dht11;


// Defines for OLES SDD1306
#include <SSD1306Ascii.h>
#include <SSD1306AsciiAvrI2c.h>

// 0X3C+SA0 - 0x3C or 0x3D
#define I2C_ADDRESS 0x3C

// Define proper RST_PIN if required.
#define RST_PIN -1

SSD1306AsciiAvrI2c oled;

void setup() {

  // Setup DHT
  pinMode(DHTpower, OUTPUT);
  digitalWrite(DHTpower, LOW);

  Serial.begin(9600);   

  // Setup FAN
  pinMode(fanPower, OUTPUT);
  Serial.println("============ Testing Fan... ===============");

  digitalWrite(fanPower, HIGH);
  delay(5000);
  digitalWrite(fanPower, LOW);
  Serial.println("============ ...End Test Fan ===============");

  // Setup OLED 1306
  #if RST_PIN >= 0
    oled.begin(&Adafruit128x64, I2C_ADDRESS, RST_PIN);
  #else // RST_PIN >= 0
    oled.begin(&Adafruit128x64, I2C_ADDRESS);
  #endif // RST_PIN >= 0
  // Call oled.setI2cClock(frequency) to change from the default frequency.

  oled.setFont(Callibri11);
  oled.clear();
  oled.println("Starting...");
}

void loop() {
  delay(1000);
  oled.clear();
  RHcheck();                        //check Humidity Level
  Serial.print("Waiting... ");Serial.print(delayTime/1000); Serial.println(" sec");
  oled.print("Waiting ");oled.print((unsigned long)delayTime/1000/60);oled.println(" min...");
  delay(delayTime);                    
  }


/**
 * Calculate Dew Point
 * cf https://www.wetterochs.de/wetter/feuchte.html
 */
float dew_point(byte temp, byte hum) {
  float t = (float) temp;
  float sdd = c * pow(10,(a*t)/(b+t));

  float dd = ((float) hum) * sdd / 100.0 ;
  float v = log10(dd/c) ;
  return b*v/(a-v) ;
}

void RHcheck() {                    //Check Humidity Level Function
  digitalWrite(DHTpower, HIGH);     //On Humidity Sensor
  delay(5000);
  Serial.println("============ Check Humidity ===============");
  delay(1000);
  Serial.println("DHT11 readings...");
   
  byte temp_inner = 0;
  byte hum_inner = 0;
  byte temp_outer = 0;
  byte hum_outer = 0;
  int err = SimpleDHTErrSuccess;

  //This bit will tell our Arduino what to do if there is some sort of an error at getting readings from our sensor
  if ((err = dht11.read(pinDHT11_inner, &temp_inner, &hum_inner, NULL)) != SimpleDHTErrSuccess) {

    oled.print("IN ERROR: ");oled.println(err);
    Serial.print("No reading from inner sensor, err="); Serial.println(err);delay(1000);
    return;
  }

  //This bit will tell our Arduino what to do if there is some sort of an error at getting readings from our sensor
  if ((err = dht11.read(pinDHT11_outer, &temp_outer, &hum_outer, NULL)) != SimpleDHTErrSuccess) {
    oled.print("OUT ERROR: ");oled.println(err);
    Serial.print("No reading from outer sensor, err="); Serial.println(err);delay(1000);
    return;
  }

  float tp_inner = dew_point(temp_inner, hum_inner) ;
  float tp_outer = dew_point(temp_outer, hum_outer) ;
  
  digitalWrite(DHTpower, LOW);     //Switch off Humidity Sensor

  oled.print("IN:    ");
  oled.print((int)temp_inner); oled.print(" C, ");
  oled.print((int)hum_inner); oled.print(" %, ");
  oled.print("TP: ");oled.print((int)tp_inner); oled.println(" C");
  oled.print("OUT: ");
  oled.print((int)temp_outer); oled.print(" C, ");
  oled.print((int)hum_outer); oled.print(" %, ");
  oled.print("TP: ");oled.print((int)tp_outer); oled.println(" C");

  if (tp_inner > tp_outer) {  // tp_outer has to be really smaller to make a difference and avoid unintended increase of humidity
    Serial.println("Dew Point inner is higher ==> fan OK");
  }
  else {
    Serial.println("Dew Point outer is higher ==> fan NOK");
    oled.println("FAN: NOK (dew point)");
    return;
  }
  if (temp_inner<=minTemp || temp_outer<=minTemp) {
    Serial.println("inner or outer Temp to low ==> fan NOK");
    oled.println("FAN: NOK (min temp)");
    return;
  }
  else{
    Serial.println("inner and outer Temp OK ==> fan OK");
  }
  oled.print("Running ");oled.print((unsigned long)fanTime/1000/60);oled.println(" min...");
  delay(500);
  digitalWrite(fanPower, HIGH);
  delay(fanTime);
  digitalWrite(fanPower, LOW);
  
 }
