import processing.serial.*;
import cc.arduino.*;

Serial myPort;




void setup(){
    // set up DataIn object; indicate the URL you want, your Pachube API key, and how often you want it to update
    // e.g. every 5 seconds
       size (500,500);
    println(Serial.list());
     myPort = new Serial(this, Serial.list()[0], 9600);
      myPort.bufferUntil('\n');
    background (0);
}

void draw() {
   }
 
 void serialEvent (Serial myPort) {
 // get the ASCII string:
 String inString = myPort.readStringUntil('\n');
 
 if (inString != null) {
 // trim off any whitespace:
 inString = trim(inString);
  float inByte = float(inString);
 
 
 
    ellipse(250,250,200,200);

    
if(inByte>= 300){
   ellipse(250,250,200,200);
  fill(255,225,0);
}else{
   ellipse(250,250,200,200);
  fill(150);
}
println(inByte);

}
 }
