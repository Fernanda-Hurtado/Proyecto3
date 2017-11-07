void ganador(){

   if (jugador1[0]<=0)
    {
      textSize(20);
      fill(#DEBE1D);
      text("GANADOR ",352,445);
      text("Presiona 'R' para regresar al menú de inicio",200,520);
      text("ó",400,550);
      text("Presiona 'F' para finalizar",280,580);
      pushMatrix();
     if (jugador2==gato)
    {
     image(shushuCara,540,150);
    } else if (jugador2==perro)
    {
    image(robinCara,480,170);
    } else if (jugador2==pato)
    {
    image(duckyCara,530,160);
    } else if (jugador2==tortuga)
    {
    image(pedroCara,440,165);
    } else if (jugador2==pez)
    {
    image(rogerCara,450,170);
    } else if (jugador2==conejo)
    {
    image(puaCara,540,100);
    }
    popMatrix();
    } else 
    if (jugador2[0]<=0)
    {
      textSize(20);
      fill(#DEBE1D);
      text("GANADOR ",352,445); 
      text("Presiona 'R' para regresar al menú de inicio",200,520);
      text("ó",400,550);
      text("Presiona 'F' para finalizar",280,580);
      pushMatrix();
    if (jugador1==gato)
    {
    image(shushuCara,40,150);      
    } else if (jugador1==perro)
    {
     image(robinCara,40,150);      
    } else if (jugador1==pato)
    {
     image(duckyCara,40,150);   
    } else if (jugador1==tortuga)
    {
     image(pedroCara,40,150);    
    } else if (jugador1==pez)
    {
     image(rogerCara,40,150);     
    } else if (jugador1==conejo)
    {
     image(puaCara,40,100);      
    }
    popMatrix();
    }//fin if jugador 2
    
    if(keyPressed){
    if((key=='r')||(key=='R')){
  gato[0]=100;  //vidas//
  perro[0]=100;
  pato[0]=80;
  tortuga[0]=60;
  pez[0]=50;
  conejo[0]=80;   
  pantalla=0;
    }  //cierre de if'x'
  
   if((key=='f')||(key=='F')){
    exit();
    }  //cierre de if'x'
  }  //cierre de keyPressed
  
}//