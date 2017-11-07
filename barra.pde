void keyPressed(){    
  if (turno==0&&pantalla==3)
  {
    if (key=='q'||key=='Q')
    {
      
      jugador2[0]=jugador2[0]-jugador1[1];
      println(jugador2[0]);
      turno=1;
    }
    
  }//fin turno==0
  if (turno==1&&pantalla==3)
  {
    if (key=='p'||key=='P')
    {
     
      jugador1[0]=jugador1[0]-jugador2[1];
      println(jugador1[0]);
      turno=0;
    } 
    
  }//fin turno==1
  if (jugador1[0]<=0||jugador2[0]<=0)
   {
     if (keyCode==SHIFT) {
      pantalla=4;
    }
  
    if (key=='0'){
      pantalla=0;

    }   
    
  }//fin comparacion de jugadores
}// fin keypressed