class Prva{
  
  String[] pitanja = {"Tko je ubio roditelje Harry Pottera?",
    "Junak kojeg romana ruskog romantizma\nje suvišni čovjek Pečorin?",
    "Kako se prezivaju kriminalna\nbraća u Dinamu?",
    "Koji je glumac 1999. i 2000. osvojio\nzlatne globuse bez da je ijednom bio\nnominiran za Oscara?",
    "Glavni grad Nigerije?",
    "V-2 rakete, Mason-Dixon linija i paranoja\nglavni su motivi romana kojeg\nameričkog književnika?",
    "Ako je površina kruga 4 pi, koliki je\nnjegov promjer?",
    "U Gospodaru Prstenova misteriozni\ngraničar Strider zapravo je koji nasljednik\nGondorovog trona",
    "Koji se muški glas nalazi između basa i tenora?", "Po kojem se naselju uglavnom nazivaju Hrvati s Kosova?", "Maskirani psihopat Michael Myers glavni je lik kojeg horor serijala?", "Dok je Dante autor Božanske komedije, Balsac je autor koje komedije?", "U kojem su agregacijskom stanju propan i butan pri sobnoj temperaturi?", "Hrvatska pasmina Kraški ovčar danas je poznata kao posavski, što?", "Što je malo c u glasovitoj formuli E=mc^2?", "Koja boja nedostaje bijeloj i crnoj da bi se dobila Estonska zastva?", "Koji je američki glumac glumio u filmovima Peti element, Šesto čulo i 12 majmuna?", "Iz kojeg su našeg romana likovi kanonika, kumordinara Žorža i mecene?", "Koja je građevina na Kreti bila dom minotaura iz grčke mitologije?", "Katedrala kojeg grada se nalazi na naličju novčanice od 100 kuna?", "Što se dodaje živom vapnu da bi postalo gašeno?", "Koji je troslovni naziv rožnatih ploča u ustima kitova kojima filtriraju planktone?", "U čast kojeg su se grčkog boga izvodile lirske pjesme ditirambi?", "Kojom su valutom Nizozemci plaćali prije uvođenja eura?", "U kojem se gradu nalazi Europski sud za ljudska prava?", "Kojim anglizmom nazivamo vrstu malog prijenosnog računala sa zaslonom osjetljivim na dodir?", "U kojem crtiću Moe Szyslak stoji iza šanka?", "U kojoj je američkoj saveznoj državi prvi Disneyjev park?", "Kako nazivamo produžene očnjake u divlje svinje?", "Oblik kojeg slova tvori sustav autocesta u Istri?", "Pisac romana Madame Bovary?", "Koje krvne čestice sudjeluju u zgrušavanju krvi?", "Koji je srpoliki predmt bio lovačko oružje aboridžina?"};
  String[] odgovori = {"voldemort", "junak naseg doba", "mamic", "carrey", "abuja", "pynchon",
                      "cetiri", "aragorn", "bariton", "janjevo", "noc vjestica", "ljudske", "plinovitom", "gonic", "brzina svjetlosti", "plava", "bruce willis", "u registraturi", "labirint", "rijeke", "voda", "usi", "dioniza", "guldenom", "strasbourg", "tablet", "simpsoni", "kalifornija", "kljove", "y", "gustav flaubert", "trombociti", "bumerang"};
  int i, m=0, vrime = 90000, time = millis();
  boolean q;
  String odgovor = "", feedback = "";
  
  Prva(){
  }
  
  void iscrtaj(){
    if (millis() > time + 1000)
    {
      vrime = vrime - 1000;
      time = millis();
    }
    if( vrime <= 0 ){
      prva = false;
      druga = true;
      return;
    }
    fill(0);
    rect( 20, 20, 100, 30);
    fill(255);
    text( str(vrime/1000), 50, 50 );
    if( millis() > m + 1500 ){
      background(0);
      fill(255);
      rect(50, 70, 700, 400);
      rect(50, 480, 700, 50);
      text( iznos, 700, 50 );
      text( str(vrime/1000), 50, 50 );
      fill(0);
      if(!q){
        i = (int)random(32);
        q = true;
      }
      text(pitanja[i], 100, 300);
      text(odgovor, 50, 520);
      if(feedback != ""){
        println(feedback);
        fill(255);
        text( feedback, 50, 580 );
        m = millis();
        feedback = "";
        q = false;
      }
    }
  }

  void provjeriBotun( int key ){
    if( key == ENTER ){
      provjeriOdgovor();
      odgovor = "";
    }
    else if( key == BACKSPACE) odgovor = odgovor.substring( 0, odgovor.length()-1 );
    else{
      odgovor += char(key);
    }
  }
  
  void provjeriOdgovor(){
    if(odgovori[i].equals(odgovor) == true ){
      feedback = "Tocno!";
      iznos += 3500;
    }
    else{
      feedback = odgovori[i];
    }
  }
}
