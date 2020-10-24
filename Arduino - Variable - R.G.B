int red = 9;
int green =10;
int blue = 11;
int readPin = A2;
int readVal;
float v2;
int t = 250;

void setup() {
  // put your setup code here, to run once:
pinMode(readPin, INPUT);
pinMode(red, OUTPUT);
pinMode(green, OUTPUT);
pinMode(blue, OUTPUT);
Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
readVal = analogRead(readPin);
v2 = (5./1023.)*readVal;
Serial.println(v2);
delay(t);
if(v2 > 0 && v2 < 1) /// red
{
  analogWrite(red, 225);
  analogWrite(green, 0);
  analogWrite(blue, 0);
}

if(v2 > 1 && v2 < 2) /// green
{
  analogWrite(red, 0);
  analogWrite(green, 225);
  analogWrite(blue, 0);
}

if(v2 > 2 && v2 < 3) /// blue
{
  analogWrite(red, 0);
  analogWrite(green, 0);
  analogWrite(blue, 225);
}

if(v2 > 3 && v2 < 4) ///purple
{
  analogWrite(red, 225);
  analogWrite(green, 0);
  analogWrite(blue, 225);
}

if(v2 > 4 && v2 < 5) /// white
{
  analogWrite(red, 225);
  analogWrite(green, 225);
  analogWrite(blue, 225);
}
}
