class Treca{
  String[] pitanja = {"Iz koje su videoigre kriminalci Trevor Phillips, Michael\nDe Santa i Franklin Clinton?",
    "Koja životinja ne trči travnjacima\nprve HNL u dresu Istre 1961?"};
  String[][] odgovori = { {"GTA V", "Just Cause 3", "Uncharted 4"}, {"Zec", "Vuk", "Lisica"} };
  int a = -1, b = -1, c = -1, i, igr = -1, lov = -1, lpos = -1;
  boolean q = false, check = false, p = false;
  
  Treca(){
  }
  
  void iscrtaj(){
    background(0);
    nacrtajPlocu();
    fill(255);
    rect( 50, 350, 700, 180 );
    rect( 50, 540, 217, 40 );
    rect( 292, 540, 216, 40 );
    rect( 533, 540, 217, 40 );
    if(!q){
      i = (int)random(2);
      q = true;
      while( (a == b && a == c && b == c) || (a==b) || (a == c) || (b==c)){
        a = (int)random(3);
        b = (int)random(3);
        c = (int)random(3);
      }
    }
    fill(0);
    textSize(24);
    text( pitanja[i], 70, 400 );
    if( igr != -1 && lov == -1 ){
      fill( 255, 0, 0);
      rect( 50, 310, 150, 40 );
      fill(255);
      text( "Igrac", 55, 340);
    }
    else if( igr == -1 && lov != -1 ){
      fill( 255, 0, 0);
      rect( 600, 310, 150, 40 );
      fill(255);
      text( "Lovac", 605, 340 );
    }
    else if( igr != -1 && lov != -1 ){
      fill( 255, 0, 0);
      rect( 600, 310, 150, 40 );
      rect( 50, 310, 150, 40 );
      fill(255);
      text( "Igrac", 55, 340);
      text( "Lovac", 605, 340 );
      fill(0,0,255);
      if( igr == a ) rect( 50, 540, 217, 40 );
      if( igr == b ) rect( 292, 540, 216, 40 );
      if( igr == c ) rect( 533, 540, 217, 40 );
      if( check ){
        fill( 0, 255, 0 );
        if( 0 == a ) rect( 50, 540, 217, 40 );
        if( 0 == b ) rect( 292, 540, 216, 40 );
        if( 0 == c ) rect( 533, 540, 217, 40 );
      }
      fill( 255, 0, 0 );
      if( lov == a ) rect( 50, 540, 30, 40 );
      if( lov == b ) rect( 292, 540, 30, 40 );
      if( lov == c ) rect( 533, 540, 30, 40 );
    }
    fill(0);
    textSize(22);
    text( "A: " + odgovori[i][a], 60, 570);
    text( "B: " + odgovori[i][b], 302, 570 );
    text( "C: " + odgovori[i][c], 543, 570 );
  }
  
  void provjeriBotun( int key ){
    if( key == 'a' && igr == -1){
      igr = a;
    }
    if( key == 's' && igr == -1){
      igr = b;
    }
    if( key == 'd' && igr == -1){
      igr = c;
    }
    if( key == 'j' && lov == -1){
      lov = a;
    }
    if( key == 'k' && lov == -1){
      lov = b;
    }
    if( key == 'l' && lov == -1){
      lov = c;
    }
    if( keyCode == ENTER && p){
      check = false;
      igr = -1;
      lov = -1;
      p = false;
      a = -1;
      b = -1;
      c = -1;
      q = false;
    }
    if( keyCode == ENTER && lov != -1 && igr != -1 && check ){
      p = true;
      if( igr == 0 ) pos++;
      if( lov == 0 ) lpos++;
    }
    if( keyCode == ENTER && lov != -1 && igr != -1 ){
      check = true;
    }
  }
  
  void nacrtajPlocu(){
    for( int i = 0; i < 7; i++ ){
      fill( 167 );
      rect( 200, i * 50, 400,  50 );
    }
    for( int i = 0; i <= lpos; i++ ){
      fill( 255, 0, 0 );
      rect( 200, i * 50, 400,  50 );
    }
    for( int i = lpos + 1; i <= pos; i++ ){
      fill( 0, 0, 255 );
      rect( 200, i * 50, 400,  50 );
    }
    fill(255);
    textSize(26);
    text(iznos, 350, pos * 50 + 35);
  }
}
