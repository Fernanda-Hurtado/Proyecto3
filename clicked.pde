 void mouseClicked(){
 if(pantalla==2){
   
    //Cuadro1//
  if((mouseX>=120)&(mouseX<=150)&(mouseY>=240)&(mouseY<=260)){
  opcion1.rectangulo();
   if (seleccion==0){
      
        jugador1=gato;
        seleccion=1;

      } else 
      if (seleccion==1)
      {
        jugador2=gato;
        pantalla=3;
      }//cierre penultimo IF
  }//cierre de IF anidado
   
  //Cuadro2//
  if((mouseX>=380)&(mouseX<=410)&(mouseY>=240)&(mouseY<=260)){
  opcion2.rectangulo();
   if (seleccion==0)
      {
        jugador1=perro;
        seleccion=1;

      } else 
      if (seleccion==1)
      {
        jugador2=perro;
        pantalla=3;
      }//cierre penultimo IF
  }//cierre de IF anidado
  
   //Cuadro3//
  if((mouseX>=640)&(mouseX<=670)&(mouseY>=240)&(mouseY<=260)){
  opcion3.rectangulo();
   if (seleccion==0)
      {
        jugador1=pato;
        seleccion=1;

      } else 
      if (seleccion==1)
      {
        jugador2=pato;
        pantalla=3;
      }//cierre penultimo IF
  }//cierre de IF anidado
  
   //Cuadro4//
  if((mouseX>=120)&(mouseX<=150)&(mouseY>=490)&(mouseY<=510)){
  opcion4.rectangulo();
   if (seleccion==0)
      {
        jugador1=tortuga;
        seleccion=1;

      } else 
      if (seleccion==1)
      {
        jugador2=tortuga;
        pantalla=3;
      }//cierre penultimo IF
  }//cierre de IF anidado
  
  //Cuadro5//
  if((mouseX>=380)&(mouseX<=410)&(mouseY>=490)&(mouseY<=510)){
  opcion5.rectangulo();
   if (seleccion==0)
      {
        jugador1=pez;
        seleccion=1;

      } else 
      if (seleccion==1)
      {
        jugador2=pez;
        pantalla=3;
      }//cierre penultimo IF
  }//cierre de IF anidado
  
  //Cuadro6//
  if((mouseX>=640)&(mouseX<=670)&(mouseY>=490)&(mouseY<=510)){
  opcion6.rectangulo();
   if (seleccion==0)
      {
        jugador1=conejo;
        seleccion=1;

      } else 
      if (seleccion==1)
      {
        jugador2=conejo;
        pantalla=3;
      }//cierre penultimo IF
  }//cierre de IF anidado
  
}  //fin if pantalla
}//fin MOUSECLICKED