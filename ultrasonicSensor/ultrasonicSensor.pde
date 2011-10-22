const int pingPin = 7;

void setup() {
  // initialize the serial communication:
  Serial.begin(9600);
}

void loop() {
  
  
  
    // establish variables for duration of the ping, 
  // and the distance result in inches and centimeters:
  long duration;
  // The PING))) is triggered by a HIGH pulse of 2 or more microseconds.
  // Give a short LOW pulse beforehand to ensure a clean HIGH pulse:
  pinMode(pingPin, OUTPUT);
  digitalWrite(pingPin, LOW);
  delayMicroseconds(2);
  digitalWrite(pingPin, HIGH);
  delayMicroseconds(5);
  digitalWrite(pingPin, LOW);

  // The same pin is used to read the signal from the PING))): a HIGH
  // pulse whose duration is the time (in microseconds) from the sending
  // of the ping to the reception of its echo off of an object.
  pinMode(pingPin, INPUT);
  duration = pulseIn(pingPin, HIGH);


  
  // send the value of analog input 0:
  Serial.println(duration);
  // wait a bit for the analog-to-digital converter
  // to stabilize after the last reading:
  delay(10);
}
