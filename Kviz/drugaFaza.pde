class Druga{
  
  Druga(){
  }
  
  void iscrtaj(){
    background(konfeti1);
    
    fill(255,126);
    rect(100, 294, 580, 65);
    fill(tamnoplava);
    textSize(28);
    text("Čestitamo, osvojili ste " + iznos + " kuna u minuti!" , 120, 340);
    
    fill(255);
    textSize(20);
    text("Pritisnite SPACE ako ste spremni za igru na ploči.", 170, 450 );
  }
}
