class Zavrsna{
  
  Zavrsna(){
  }
  
  void iscrtaj(){
    background(pozadina);
    textSize(26);
    fill(255);
    text("Potjera", 10, 100);
    if( win ) text("Čestitam! Osvojili ste " + iznos + " kuna", 200, 300);
    else text( "Dobra igra na ploči, ali ipak ste ulovljeni.", 200, 300);
    text( "Pritisnite SPACE za povratak na početnu stranicu.", 200, 500 );
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
