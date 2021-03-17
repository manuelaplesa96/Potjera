class Pocetni{
  
  String pitanje;
  boolean q = false;
  
  Pocetni(){
  }
  
  void iscrtaj(){
    if( pocetna ){
      background(0);
      fill(255);
      textSize(26);
      text("Potjera", 10, 100);
      text("Pritisnite SPACE za nastavak", 200, 300);
    }
    if( prva ){
      Faza1.iscrtaj();
    }
    if( druga ){
      Faza2.iscrtaj();
    }
    if( izbor ){
      Izbor.iscrtaj(); 
    }
    if( treca ){
      Faza3.iscrtaj(); 
    }
    if( zavrsni ){
      Zavrsni.iscrtaj(); 
    }
  }
  
  void provjeriBotun(int key){
    if( prva ) Faza1.provjeriBotun( key );
    if( izbor ) Izbor.provjeriBotun( key );
    if( treca ) Faza3.provjeriBotun( key );
    if ( key == ' ' && pocetna){
      Faza1.time = millis();
      pocetna = false;
      prva = true;
    }
    if( key == ' ' && druga){
      druga = false;
      izbor = true;
    }
    if( key == ' ' && zavrsni ) Zavrsni.provjeriBotun( key );
  }
}
