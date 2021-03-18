class Prva{
  
  String[] pitanja = {"Tko je ubio roditelje Harry Pottera?",
    "Junak kojeg romana ruskog romantizma\nje suvišni čovjek Pečorin?",
    "Kako se prezivaju kriminalna\nbraća u Dinamu?",
    "Koji je glumac 1999. i 2000. osvojio zlatne globuse\n bez da je ijednom bio nominiran za Oscara?",
    "Glavni grad Nigerije?",
    "V-2 rakete, Mason-Dixon linija i paranoja glavni\nsu motivi romana kojeg američkog književnika?",
    "Ako je površina kruga 4 pi, koliki je\nnjegov promjer?",
    "U Gospodaru Prstenova misteriozni graničar Strider\nzapravo je koji nasljednik Gondorovog trona?",
    "Koji se muški glas nalazi između basa i tenora?", 
    "Po kojem se naselju uglavnom nazivaju Hrvati s Kosova?", 
    "Maskirani psihopat Michael Myers glavni je lik\nkojeg horor serijala?", 
    "Dok je Dante autor Božanske komedije, Balsac je\nautor koje komedije?", 
    "U kojem su agregacijskom stanju propan\ni butan pri sobnoj temperaturi?", 
    "Hrvatska pasmina Kraški ovčar danas\nje poznata kao posavski, što?", 
    "Što je malo c u glasovitoj formuli E=mc^2?", 
    "Koja boja nedostaje bijeloj i crnoj da\nbi se dobila Estonska zastva?", 
    "Koji je američki glumac glumio u filmovima\nPeti element, Šesto čulo i 12 majmuna?", 
    "Iz kojeg su našeg romana likovi kanonika,\nkumordinara Žorža i mecene?", 
    "Koja je građevina na Kreti bila dom\nminotaura iz grčke mitologije?", 
    "Katedrala kojeg grada se nalazi na\nnaličju novčanice od 100 kuna?", 
    "Što se dodaje živom vapnu da bi postalo gašeno?", 
    "Koji je troslovni naziv rožnatih ploča\nu ustima kitova kojima filtriraju planktone?", 
    "U čast kojeg su se grčkog boga izvodile\nlirske pjesme ditirambi?", 
    "Kojom su valutom Nizozemci plaćali\nprije uvođenja eura?", 
    "U kojem se gradu nalazi Europski sud\nza ljudska prava?", 
    "Kojim anglizmom nazivamo vrstu malog\nprijenosnog računala sa zaslonom osjetljivim na dodir?", 
    "U kojem crtiću Moe Szyslak stoji iza šanka?", 
    "U kojoj je američkoj saveznoj državi\nprvi Disneyjev park?", 
    "Kako nazivamo produžene očnjake u divlje svinje?", 
    "Oblik kojeg slova tvori sustav autocesta u Istri?", 
    "Pisac romana Madame Bovary?", 
    "Koje krvne čestice sudjeluju u zgrušavanju krvi?", 
    "Koji je srpoliki predmt bio lovačko oružje aboridžina?",
    "Koja je najmanja država na svijetu?",
    "Koja je nogometna ekipa osvojila Ligu Prvaka\nnajviše puta?",
    "Koje se voće može pronaći na trofeju dobivenom za\nosvajanje Wimbledona?",
    "Koje meksičko pivo dijeli ime s popularnim virusom?",
    "Kako se na hrvatskom zove glavni grad Westerosa?",
    "Tko je jedini glazbenik koji je dobio Nobelovu\nnagradu za književnost?",
    "Koje je pravo ime Davida Bowieja?",
    "Koji nogometaš ima najviše Instagram pratitelja?",
    "Kako se zove religija čiji je član Tom Cruise?",
    "Američka pjevačica Stefani Joanne Angelina Germanotta\nje poznatija kao...?",
    "Ime kojeg djeteta američkog celebrity para daje polovicu\nnaslova trilera Alfreda Hitchcocka iz 1959. godine?",
    "Što Gibonnijeva pjesma odgovara na naslov filma\nSpike Leeja iz 1989. godine?"};
  String[] odgovori = {"voldemort", "junak naseg doba", "mamic", "jim carrey", "abuja", "thomas pynchon",
                      "cetiri", "aragorn", "bariton", "janjevo", "noc vjestica", "ljudske", "plinovitom", "gonic", "brzina svjetlosti", "plava", "bruce willis", "u registraturi", "labirint", "rijeke", "voda", "usi", "dioniza", "guldenom", "strasbourg", "tablet", "simpsoni", "kalifornija", "kljove", "y", "gustav flaubert", "trombociti", "bumerang",
                      "vatikan", "real madrid", "ananas", "corona", "kraljev grudobran", "bob dylan", "david jones", "cristiano ronaldo", "scijentologija", "lady gaga", "north west", "cinim pravu stvar"};
  int i, m=0, vrime = 60000, time = millis();
  boolean q;
  String odgovor = "", feedback = "";
  int[] iskoristeniIndeksi = new int[45];
  int koristenaPitanja = 0;
  
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
    
    fill(255);
    
    //text( str(vrime/1000), 50, 50 );
    if( millis() > m + 1500 ){
      
      background(pozadina);
      
      textSize(25);
      text("Trenutni iznos: " + iznos, 50, 80 );
      text( str(vrime/1000), 690, 80 );
      
      textSize(20);
      fill(255, 126);
      rect(50, 200, 700, 150);
      rect(50, 480, 700, 50);
      
      //image(vrijeme,10,5);
      fill(0);
      if(!q){
        i = (int)random(45);
        while(koristenaPitanja != 0 && vecIskoristenoPitanje(iskoristeniIndeksi, i))
        {
          i = (int)random(45);
        }
        iskoristeniIndeksi[koristenaPitanja] = i;
        koristenaPitanja += 1;
        q = true;
      }
      text(pitanja[i], 100, 270);
      text(odgovor, 100, 513);
      if(feedback != ""){
        println(feedback);
        fill(255);
        //-----------
        if( feedback != "Točno!" ) fill(178,34,34);
        else fill(0,81,34);
        rect(50, 480, 700, 50);
        fill( tamnoplava );
        //-------------
        text(feedback, 100, 513 );
        m = millis();
        feedback = "";
        q = false;
      }
    }
  }
  
  boolean vecIskoristenoPitanje(int[] arr, int val) {
    for(int i=0; i<arr.length; i++) {
      if(arr[i]==val) {
        return true;
      }
    }
    return false;
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
      feedback = "Točno!";
      iznos += 3500;
    }
    else{
      feedback = odgovori[i];
    }
  }
}
