class Zavrsna{
  
  Zavrsna(){
  }
  
  void iscrtaj(){
    background(konfeti1);
    textSize(28);
    fill(255);
    if( win ){
      fill(255,126);
      rect(190, 280, 400, 150);
      fill(tamnoplava);
      textSize(28);
      text("Čestitamo!", 300, 340); 
      text("Osvojili ste " + iznos + " kuna.", 250, 380);
    }
    else{
      background(izgubio);
      fill(255,126);
      rect(200, 310, 400, 100);
      fill(tamnoplava);
      textSize(28);
      text( "Dobra igra na ploči,ali\n    ipak ste ulovljeni.", 260, 350);
    }
    
    fill(255);
    textSize(20);
    text( "Pritisnite SPACE za povratak na početnu stranicu.", 170, 480);
  }
  
  void provjeriBotun( int key ){
    win = false;
    pos = 1;
    iznos = 0;
    Faza1.m = 0;
    Faza1.vrime = 60000;
    Faza1.odgovor = "";
    Faza1.feedback = "";
    Faza1.iskoristeniIndeksi = new int[45];
    Faza1.koristenaPitanja = 0;
    Faza3.iskoristeniIndeksi = new int[32];
    Faza3.koristenaPitanja = 0;
    zavrsni = false;
    pocetna = true;
  }
}
