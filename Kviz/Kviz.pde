boolean pocetna, prva, druga, izbor, treca, zavrsni, win, pravila;
Pocetni pocetni;
Prva Faza1;
Druga Faza2;
Treca Faza3;
Biranje Izbor;
Zavrsna Zavrsni;
Pravila ispisPravila;
int iznos, pos;

PImage naslovnica;
PImage pozadina;
PImage vrijeme;
PImage konfeti1;
color tamnoplava = color(0, 16, 38);
color plava = color(51, 89, 204);
PFont f;
PFont spaceFont;

void setup(){
  size(800,800);
  naslovnica = loadImage("naslovnica.jpeg");
  pozadina = loadImage("pozadina.jpeg");
  konfeti1 = loadImage("konfeti1.jpeg");
  vrijeme = loadImage("time1.png");
  
  naslovnica.resize(800,800);
  pozadina.resize(800,800);
  konfeti1.resize(800,800);
  vrijeme.resize(45,43);
  
  f = createFont("Georgia",16,true);
  spaceFont = createFont("Candara Light Bold",25,true);
  textFont(f);
  
  pos = 1;
  pocetni = new Pocetni();
  Faza1 = new Prva();
  Faza2 = new Druga();
  Faza3 = new Treca();
  Izbor = new Biranje();
  Zavrsni = new Zavrsna();
  ispisPravila = new Pravila();
  pocetna = true;
  prva = false;
  druga = false;
  izbor = false;
  treca = false;
  zavrsni = false;
  win = false;
  pravila = false;
}

void draw(){
  pocetni.iscrtaj();
}

void keyPressed(){
  pocetni.provjeriBotun(key);
}
