   void vida (){
     //vida jugador1
    pushMatrix();
    fill(#DEBE1D);
    rect(50,450,(jugador1[0])*3,45);
    popMatrix();
  //vida jugador2
    pushMatrix();
    fill(#DEBE1D);
    rect(450,450,(jugador2[0])*3,45);
    popMatrix();
   }//fin vida  