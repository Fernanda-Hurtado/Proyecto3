class Drop {
  float x = random (width);
  float y = random (-500, -50);
  float z = random (0, 20);
  float len = map (z, 0, 20, 10, 20);
  float yspeed = map(z, 0, 20, 1, 20);
  
  void fall() {
    y = y + yspeed;
    float grav = map (z, 0, 20, 0, 0.2);
    yspeed = yspeed + grav;
    
    if (y > height){
      y = random(-200, -100);
      yspeed = map(z, 0, 20, 4, 10);
    }
  }
  void show (){
    float thick = map(z, 0, 20, 1, 3);
    strokeWeight(thick);
    stroke(138, 43, 226);
    line (x, y, x, y+len);
  }
        
} // cierre del DROP

void deldrop(){
 if(j==1);
  background(#EAC9E7);
  
  for(int i = 0; i < drops.length; i++){
  drops[i].fall();
  drops [i].show();

  String titulo="GUERRA DE MASCOTAS";
  fill(#9161C9);
  textSize(70);
  text(titulo,210,150,400,300);
  
 
  String mascotas="Las mascotas pelean en secreto por el amor de su humano...";
  String instrucciones="¿Quieres verlos pelear?";
  String presiona= "Da clic sobre la pantalla y presiona 'x' para comenzar";
  String presiona2="o 'L' para leer las instrucciones";
  textSize(20);
  fill(#51BFBE);
  //fill(#E06AD9);
  text(mascotas,100,400,600,400);
  fill (#C85ECE);
  text(instrucciones,270,450,600,400);
  fill(#C45DAA);
  text(presiona,130,500,600,400);
   fill(#C45DAA);
  text(presiona2,240,540,600,400);
} //cierre del for

  if(keyPressed){
    if((key=='x')||(key=='X')){
    pantalla=2;
    }  //cierre de if'x'
  
   if((key=='l')||(key=='L')){
    pantalla=1;
    }  //cierre de if'x'
  }  //cierre de keyPressed
  
}//fin deldrop