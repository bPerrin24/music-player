// Global Variables //<>//
color red = #FC0000;
color purple = #BD02C1;
color regularButton = red;
color hoverOverButton = purple;

void  quitButtonSetup() {
  
}



void quitButtonDraw() {
  if (mouseX>width*3/4 && mouseX<width && mouseY>0 && mouseY<height*1/8) {//Hover over
    fill(hoverOverButton);
    rect(width*3/4, height*0/8, width*3/4, height*1/8);
  } else {
    fill(regularButton);
    rect(width*3/4, height*0/8, width*3/4, height*1/8);
  }
}


//Listener
void quitButtonMouseClicked() {
  if (mouseX>width*3/4 && mouseX<width && mouseY>0 && mouseY<height*1/8) {
    exit();
  }
} //End mouseClicked
