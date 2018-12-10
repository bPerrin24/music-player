//File / Sketch / Import Library / Add Library / Click Minim
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
int currentSong = numberOfSongs - numberOfSongs; //uses formula or fileIO memory

void setup() {
  //size(): Console output, not visual data, text promptos only, not complete yet

  minim = new Minim(this); //load from data directory, loadFile should also load from project folder
  song[0] = minim.loadFile("Spooky_SZN.mp3");
  song[1] = minim.loadFile("Edison.mp3");
  song[2] = minim.loadFile("Move_Out.mp3");

  println("Start of Console");
  println("Click the Console to Finish Starting this program");
  println("Press P to Play and Pause");
}

void draw() {
}

void mousePressed() {
}

void keyPressed() {
 if (key == 'n' || key == 'N') {
if( currentSong == numberOfSongs -1 ) {
}
   
   if ( song[currentSong].isPlaying() ) { 
       song[currentSong].pause();
       song[currentSong].rewind();
       currentSong = currentSong +1;
       song[currentSong].play();
       if ( currentSong == nuberOfSongs - 1) {
         currentSong = numberOfSongs - numberOfSongs;
      } else {
      currentSong = currentSong +1;
      }
      song[currentSong].play();
      else {
    if  song[currentSong].rewind();
      currentSong = currentSong + 1;
     
  
}
       
   if (key == 'p' || key == 'P') {
       if ( song[currentSong].isPlaying() ) {
     song[currentSong].pause();
    } else if ( song[currentSong].position() == song[currentSong].length() ) {
      song[currentSong].rewind();
      song[currentSong].play();
    } else {
      song[currentSong].play();
    }
  }
}
