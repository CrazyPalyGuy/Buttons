// Global Variables
float buttonX, buttonY, buttonWidth, ButtonHeight;
color buttonColour, purple=#FC03FC, white=#FFFFFF, reset=white, blue=#041981;

void setup() {
  fullScreen();
  //Population
  buttonX = displayWidth*1/4;
  buttonY = displayHeight*1/3;
  buttonWidth = displayWidth*1/2;
  ButtonHeight = displayHeight*1/3;
}//End setup()

void draw() {
  background(white);
  //println(mouseX, mouseY);
  if ( mouseX >= buttonX && mouseY >= buttonY && mouseX <= buttonX+buttonWidth && mouseY <= buttonY+ButtonHeight ) {
    buttonColour = blue;
  } else {
    buttonColour = purple;
  }//End if Button Colour
  fill(buttonColour);
  rect(buttonX, buttonY, buttonWidth, ButtonHeight);
  fill(reset);
}//End draw()

void mousePressed() {
  if (mouseX >= buttonX && mouseY >= buttonY && mouseX <= buttonX+buttonWidth && mouseY <= buttonY+ButtonHeight) exit();
}//End mousePressed()

void keyPressed() {
}//End keyPressed()
