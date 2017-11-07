void ataque(){ 
  seleccion=0;
  fill(0);
  text("Jugador 1 ataca con 'Q'",80,100);
  text("Jugador 2 ataca con 'P'",480,100);
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
 //---------------------------------------------------   
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
    
      if (jugador1[0]<=0)
    {
     pantalla=4;
    } else 
    if (jugador2[0]<=0)
    {
      pantalla=4;
    }//fin if jugador 2
}//fin ataque