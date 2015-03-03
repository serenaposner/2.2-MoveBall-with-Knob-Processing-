/*
Processing sketch to control the horizontal movement of an 
onscreen ball with a dial
Serena Posner
DIGF 2B03 Physical Computing
OCAD University
Created on 022515
*/


import processing.serial.*;
Serial port;
float ballX = 0;

void setup()
{
  size(400,400);
  port = new Serial(this, Serial.list()[2], 9600);
  port.bufferUntil('\n');

}

void draw()
{
  background (0,0,0);
  fill (255);
  ellipse (ballX, 150, 150,150);
}
  
void serialEvent (Serial port){
  
  ballX = float(port.readStringUntil('\n'));
}
