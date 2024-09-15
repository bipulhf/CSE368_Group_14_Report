#include <Servo.h>
#include <NewPing.h>

#define TRIG_PIN 5

Servo myServo;
NewPing sonar(TRIG_PIN, TRIG_PIN);

void setup() {
  pinMode(TRIG_PIN, OUTPUT);
  pinMode(TRIG_PIN, INPUT);
  Serial.begin(9600);
  myServo.attach(9);
}

void loop() {
  // Rotate the servo motor from 15 to 165 degrees
  for (int i = 5; i <= 175; i++) {
    myServo.write(i);
    delay(10);
    unsigned int distance = sonar.ping_cm();
    Serial.print(i);
    Serial.print(",");
    Serial.print(distance);
    Serial.println(".");
  }
  
  // Rotate the servo motor back from 165 to 15 degrees
  for (int i = 175; i > 5; i--) {
    myServo.write(i);
    delay(10);
    unsigned int distance = sonar.ping_cm();
    Serial.print(i);
    Serial.print(",");
    Serial.print(distance);
    Serial.println(".");
  }
}
