class Pravila{
  
  Pravila(){
  }
  
  void iscrtaj(){
    background(tamnoplava);
    fill(255);
  
    //fill(boja1);
    textSize(25);
    text("Prva faza", 150 , 45);
    textSize(18);
    textAlign(LEFT);
    //fill(boja2);
    String faza1 = "* traje 1 minutu i unutar tog vremena igrač treba odgovoriti na što više\n  pitanja kako bi skupio što više novaca za daljnje faze igre\n* igrač odgovara tako da unese željeni odgovor pomoću tipkovnice te ga\n  potvrdi klikom na tipku Enter\n* nakon što istekne minuta, igrač dobije poruku o trenutnom osvojenom\n  iznosu te klikom na tipku Space potvrdi da je spreman za drugu fazu igre";
    text(faza1, 25, 90);
   
    //fill(boja1);
    textSize(25);
    text("Druga faza", 150, 285);
    textSize(18);
    textAlign(LEFT);
    //fill(boja2);
    String faza2 ="* na početku druge faze igrač bira između tri vrijednosti konačnog iznosa nagrade\n* za svako pitanje igrač i lovac dobiju 3 ponuđena odgovora od kojih je samo\n  jedan točan\n* ako igrač ili lovac odgovori točno, pomiče se jedno polje bliže kraju igre inače\n  se ne pomiču";
    text(faza2, 25, 330);
    
    textSize(25);
    text("Kraj igre", 150, 495);
    textSize(18);
    textAlign(LEFT);
    String kraj = "* igrač je došao do kraja igrače ploče i tako osvojio odabrani iznos ili je lovac\n  došao na polje na kojem je igrač čime igrač gubi odabrani iznos";
    text(kraj, 25, 540);

    textSize(25);
    text("Upute za odgovaranje na pitanja", 150, 630);
    textSize(18);
    textAlign(LEFT);
    String upute = "* igrač igra na tipkama a, s, d (odgovor pod a, pod b i pod c), a lovac sa j, k, l\n* nakon što obojica odaberu odgovor potrebno je kliknuti tipku Enter 3 puta:\n        * kako bi se pokazao točan odgovor\n        * za pomak potrebne pomake na igraćoj ploči\n        * za prikaz idućeg pitanja";
    text(upute, 25, 675);
    
    
    
    textSize(18);
    noFill();
    stroke(255);
    rect(700, 15, 90, 40);
    text("Natrag", 718, 42);
    
    if(mousePressed)
      {
        if (mouseX >= 700  && mouseX <= 700 + 100 && mouseY >= 15 && mouseY <= 15 + 40)
        {
          pravila = false;
          pocetna = true;
        }
      }
  }
}
