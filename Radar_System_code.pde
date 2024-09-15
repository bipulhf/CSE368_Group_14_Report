import processing.serial.*;
import processing.core.PFont;

Serial myPort;
String angle = "";
String distance = "";
String data = "";
String noObject;
float pixsDistance;
int iAngle, iDistance;
int index1 = 0;
PFont font;

void setup() {
  size(1200, 700); // Change this to your screen resolution
  smooth();
  myPort = new Serial(this, "COM9", 9600); // Start the serial communication
  myPort.bufferUntil('.'); // Read the data from the serial port up to the character '.'
  font = createFont("Arial", 20, true);
}

void draw() {
  drawBackground();
  drawRadar();
  drawShadowLine(); // Draw shadow before the moving line
  drawLine();
  drawObject();
  drawText();
}

void drawBackground() {
  background(0); // Clear the background with black
  for (int y = 0; y < height; y++) {
    stroke(lerpColor(color(0, 0, 0), color(0, 50, 0), map(y, 0, height, 0, 1)));
    line(0, y, width, y);
  }
}

void serialEvent(Serial myPort) { 
  data = myPort.readStringUntil('.');
  if (data != null) {
    data = data.trim(); // Remove any whitespace
    index1 = data.indexOf(","); 
    if (index1 > 0) {
      angle = data.substring(0, index1); 
      distance = data.substring(index1 + 1); 
      
      iAngle = int(angle);
      iDistance = int(distance);
    }
  }
}

void drawRadar() {
  pushMatrix();
  translate(width / 2, height - height * 0.074); 
  noFill();
  strokeWeight(2);
  stroke(98, 245, 31);
  
  drawRadarArcs();
  drawRadarLines();
  drawRadarTexts();
  
  popMatrix();
}

void drawRadarArcs() {
  float[] arcSizes = {0.9375, 0.73, 0.521, 0.313};
  for (float size : arcSizes) {
    arc(0, 0, width * size, width * size, PI, TWO_PI);
  }
}

void drawRadarLines() {
  for (int i = 30; i <= 150; i += 30) {
    line(0, 0, -width / 2 * cos(radians(i)), -width / 2 * sin(radians(i)));
  }
  line(-width / 2, 0, width / 2, 0);
}

void drawRadarTexts() {
  int[] angles = {30, 60, 90, 120, 150};
  float[] rotations = {-60, -30, 0, 30, 60};
  for (int i = 0; i < angles.length; i++) {
    drawAngleText(angles[i], rotations[i]);
  }
}

void drawObject() {
  if (iDistance < 40) {
    pushMatrix();
    translate(width / 2, height - height * 0.074); 
    strokeWeight(9);
    stroke(lerpColor(color(255, 10, 10), color(255, 255, 10), map(iDistance, 0, 40, 0, 1))); // Dynamic color for objects
    pixsDistance = iDistance * ((height - height * 0.1666) * 0.025);
    
    for(int i = 1; i <= 10; i++) {
      drawObjectLines(i);
    }
    
    popMatrix();
  }
}

void drawObjectLines(int i) {
  line(pixsDistance * cos(radians(iAngle - i)), -pixsDistance * sin(radians(iAngle - i)), 
       (width * 0.495) * cos(radians(iAngle - i)), 
       -(width * 0.495) * sin(radians(iAngle - i)));
  line(pixsDistance * cos(radians(iAngle + i)), -pixsDistance * sin(radians(iAngle + i)), 
       (width * 0.495) * cos(radians(iAngle + i)), 
       -(width * 0.495) * sin(radians(iAngle + i)));
}

void drawShadowLine() {
  pushMatrix();
  strokeWeight(9);
  translate(width / 2, height - height * 0.074); 
  for(int i = 1; i <= 40; i++) {
    stroke(0, 250, 0, 250 - i * 6); 
    line(-5, -5, (height - height * 0.12) * cos(radians(iAngle - i / 2)), 
         -(height - height * 0.12) * sin(radians(iAngle - i / 2))); 
    line(-5, -5, (height - height * 0.12) * cos(radians(iAngle + i / 2)), 
         -(height - height * 0.12) * sin(radians(iAngle + i / 2)));
  } 
  popMatrix();
}

void drawLine() {
  pushMatrix();
  strokeWeight(9);
  stroke(30, 250, 60); // Green color for the line
  translate(width / 2, height - height * 0.074); 
  line(0, 0, (height - height * 0.12) * cos(radians(iAngle)), 
       -(height - height * 0.12) * sin(radians(iAngle))); 
  popMatrix();
}

void drawText() {
  noObject = iDistance > 40 ? "Out of Range" : "In Range";
  
  fill(0);
  noStroke();
  rect(0, height - height * 0.0648, width, height * 0.0648);
  
  fill(98, 245, 31);
  textFont(font);
  textSize(25);
  textAlign(CENTER);
  
  float[] textPositions = {0.6146, 0.719, 0.823, 0.9271};
  for (int i = 0; i < textPositions.length; i++) {
    text((i + 1) * 10 + "cm", width * textPositions[i], height - height * 0.0833);
  }
  
  textSize(40);
  textAlign(LEFT);
  text("Angle: " + iAngle + " °", width * 0.10, height - height * 0.0277);
  text("Distance: ", width * 0.74, height - height * 0.0277);
  
  if (iDistance < 40) {
    fill(255, 0, 0);
    text(iDistance + " cm", width * 0.90, height - height * 0.0277);
  }
}

void drawAngleText(int angle, float rotation) {
  pushMatrix();
  translate(width / 2 + width / 2 * cos(radians(angle)) * 0.5, 
            height - height * 0.074 - width / 2 * sin(radians(angle)) * 0.5);
  rotate(radians(rotation));
  fill(98, 245, 31);
  textFont(font);
  textSize(20);
  text(angle + "°", 0, 0);
  popMatrix();
}
