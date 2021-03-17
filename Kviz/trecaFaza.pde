class Treca{
  String[] pitanja = {"Iz koje su videoigre kriminalci Trevor Phillips, Michael\nDe Santa i Franklin Clinton?",
    "Koja životinja ne trči travnjacima\nprve HNL u dresu Istre 1961?",
    "Koji je jedini hrvatski grad koji ima dva spomenika\nna listi UNESCO-a?",
    "Vec u samom nazivu kojeg je popularnog zanimanja primjetan utjecaj na druge ljude?", "Cega nema na zastavi Kenije?", "Koliko godina ima Holden Caulfield, glavni lik romana 'Lovac u žitu'?", "Kojim se obrambenim mehanizmom neke životinje u opasnosti pretvaraju da su mrtve?", "Koji je narod sredinom 19. stoljeća 'pokosila' glad uzrokovana bolešću krumpira?", "Što mjerimo ako je rezultat izražen mjernom jedinicom mmHg?", "U kojem su gradu Brazilci osvojili svoj posljednji naslov svjetskih nogometnih prvaka?", "Kojeg je rimskog cara Joaquin Phoenix portretirao u filmu 'Gladijator'?", "Koja je najveća dubina Jadranskog mora?", "Koji je komparativ u naslovu hita Eda Sheerana?", "Koja je mjerna jedinica definirana omjerom kulona i volta?", "Rog Afrike uobičajeno je ime za koji dio tog kontinenta?", "Kako nazivamo izručenje okrivljenika iz jedne države 'u ruke' neke druge države?", "Kojim brojem počinje i završava svaki redak Pascalovog trokuta?", "Koji superheroj živi u stvarnom gradu?", "Koje glazbalo ima puža na svom uskom kraju?", "Koju humorističnu tv-seriju ubrajamo u tzv. mockumentary žanr?", "Koja je knjiga o Harryju Potteru ekranizirana u dva dijela?", "Ime najpoznatije švedske grupe u povijesti može biti i oznaka za kakvu rimu?", "U refrenu 'Tužne priče o selu' Postolar Tripper pita 'Koga? Čega?' i nudi koji odgovor?"};
  String[][] odgovori = { {"GTA V", "Just Cause 3", "Uncharted 4"}, {"Zec", "Vuk", "Lisica"},
    {"Šibenik", "Split", "Dubrovnik"},
    {"influencera", "youtubera", "blogera"}, {"mača", "koplja", "štita"}, {"17", "27", "37"}, {"tanatozom", "erebozom", "morozom"}, {"Irce", "Nijemce", "Šveđane"}, {"tlak", "duljinu", "masu"}, {"u Yokohami", "u Berlinu", "u Passadeni"}, {"Komoda", "Nerona", "Trajana"}, {"1228 m", "3005 m", "947 m"}, {"happier", "better", "sweeter"}, {"farad", "herc", "njutn"}, {"najjistočniji", "najjužniji", "najzapadniji"}, {"ekstradicija", "eksklamacija", "eksproprijacija"}, {"jedan", "dva", "tri"}, {"Batman", "Spider-man", "Superman"}, {"violina", "gitara", "trombon"}, {"U uredu", "Dva i pol muškarca", "Lude 70-te"}, {"Darovi smrti", "Kamen mudraca", "Plameni pehar"}, {"za obgrljenu", "za parnu", "za unakrsnu"}, {"Janjetine!", "Piletine!", "Svinjetine!"}};
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
      i = (int)random(23);
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
      text( "Igrač", 55, 340);
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
      if( lov == a ) rect( 50, 540, 35, 40 );
      if( lov == b ) rect( 292, 540, 35, 40 );
      if( lov == c ) rect( 533, 540, 35, 40 );
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
    if( keyCode == ENTER && p && ( pos == 7 || lpos == pos ) ){
      if( pos == 7 ) win = true;
      check = false;
      igr = -1;
      lov = -1;
      p = false;
      a = -1;
      b = -1;
      c = -1;
      q = false;
      lpos = -1;
      treca = false;
      zavrsni = true;
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
    if( lpos == pos ) background(127, 0, 0);
    if( pos == 7 ) background( 0, 127, 0 );
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
    if( lpos != pos ){
      text(iznos, 355, pos * 50 + 35);
      triangle( 210, pos*50+10, 210, pos*50+40, 230, pos*50+25 );
      triangle( 590, pos*50+10, 590, pos*50+40, 570, pos*50+25 );
    }
    fill(0);
    if( lpos != -1 ) triangle( 250, lpos*50+10, 550, lpos*50+10, 400, lpos*50+40 );
  }
}
