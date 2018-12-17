import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


//Global Variables
Minim minim;
int numberOfSongs = 3;
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
int currentSong = numberOfSongs - numberOfSongs;





void setup() {

  
    minim = new Minim(this);
  song[0] = minim.loadFile("Spooky_SZN.mp3");
  song[1] = minim.loadFile("Edison.mp3");
  song[2] = minim.loadFile("Move_Out.mp3");
  
  
  size(500, 600);

  musicPlayerGUI();
  quitButtonSetup();
}
void draw() {
  quitButtonDraw();
}

void mouseClicked() {
   musicPlayerButtons();
   quitButtonMouseClicked();
}
