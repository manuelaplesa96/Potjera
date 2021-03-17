class Biranje{
  
  int gornja, donja;
  
  Biranje(){
  }
  
  void iscrtaj(){
    background(pozadina);
    if( iznos == 0){
      gornja = 11000;
      donja = -3500;
    }
    else{
      gornja = iznos * 4;
      donja = iznos / 2;
    }
    fill(167);
    for( int i = 0; i < 7; i++ )
      rect( 50, 50 + i * 75, 700, 75 );
    fill(255);
    rect( 50, 125, 700, 75 );
    rect( 50, 200, 700, 75 );
    rect( 50, 275, 700, 75 );
    fill(204, 102, 0);
    if( pos == 0 ) rect( 50, 125, 700, 75 );
    if( pos == 1 ) rect( 50, 200, 700, 75 );
    if( pos == 2 ) rect( 50, 275, 700, 75 );
    fill( 0 );
    textSize( 45 );
    text( gornja, 300, 185 );
    text( iznos, 300, 260 );
    text( donja, 300, 335 );
  }
  
  void provjeriBotun( int key ){
     if( keyCode == UP ){
       if( pos == 1 || pos == 2 ) pos--;
       else pos = 2;
     }
     if( keyCode == DOWN ){
       if( pos == 0 || pos == 1 ) pos++;
       else pos = 0;
     }
     if( key == ENTER ){
       if( pos == 0 ) iznos = gornja;
       if( pos == 2 ) iznos = donja;
       pos = pos + 1;
       izbor = false;
       treca = true;
     }
  }
}
