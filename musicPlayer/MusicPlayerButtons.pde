void musicPlayerButtons() {
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
