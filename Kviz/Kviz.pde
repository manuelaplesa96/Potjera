boolean pocetna, prva, druga, izbor, treca, zavrsni, win;
Pocetni pocetni;
Prva Faza1;
Druga Faza2;
Treca Faza3;
Biranje Izbor;
Zavrsna Zavrsni;
int iznos, pos;

void setup(){
  size(800,600);
  pos = 1;
  pocetni = new Pocetni();
  Faza1 = new Prva();
  Faza2 = new Druga();
  Faza3 = new Treca();
  Izbor = new Biranje();
  Zavrsni = new Zavrsna();
  pocetna = true;
  prva = false;
  druga = false;
  izbor = false;
  treca = false;
  zavrsni = false;
  win = false;
}

void draw(){
  pocetni.iscrtaj();
}

void keyPressed(){
  pocetni.provjeriBotun(key);
}
