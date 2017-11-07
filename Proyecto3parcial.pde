// Programa de Maria Fernanda Hurtado Ruiz//
import ddf.minim.*;
Minim AudioManager;
AudioPlayer intro;
AudioPlayer personajes;
AudioPlayer reglas;
AudioPlayer pelea;
AudioPlayer ganador;

Drop[] drops = new Drop[100];
int pantalla,j=1,opc,fo=5;
int seleccion=0;
int turno=0;
PImage shushu;
PImage robin;
PImage ducky;
PImage pedro;
PImage roger;
PImage pua;
PImage tabla;
PImage inst;

PImage shushuCara;
PImage robinCara;
PImage duckyCara;
PImage pedroCara;
PImage rogerCara;
PImage puaCara;

PImage fondo2;
PImage gana;

Rectangulo opcion1;
Rectangulo opcion2;
Rectangulo opcion3;
Rectangulo opcion4;
Rectangulo opcion5;
Rectangulo opcion6;
ArrayList <Rectangulo> rectangulos;

float [] gato=new float[2];
float [] perro=new float[2];
float [] pato=new float[2];
float [] tortuga=new float[2];
float [] pez=new float[2];
float [] conejo=new float[2];
float [] jugador1=new float[2];
float [] jugador2=new float[2];


void setup(){
size(800,600);

gato[0]=100;  //vidas//
gato[1]=1*floor(random(10,40));  //ataque//
perro[0]=100;
perro[1]=1*floor(random(10,40));
pato[0]=80;
pato[1]=1*floor(random(15,30));
tortuga[0]=60;
tortuga[1]=1*floor(random(10,27));
pez[0]=50;
pez[1]=1*floor(random(15,25));
conejo[0]=80;
conejo[1]=1*floor(random(15,30));

AudioManager=new Minim(this);

intro=AudioManager.loadFile("aintro.mp3");
personajes=AudioManager.loadFile("apersonajes.mp3");
reglas=AudioManager.loadFile("areglas.mp3");
pelea=AudioManager.loadFile("apelea.mp3");
ganador=AudioManager.loadFile("aganador.mp3");

rectangulos=new ArrayList <Rectangulo> ();
rectangulos.add(opcion1);
rectangulos.add(opcion2);

shushu=loadImage("Gato.png");
robin=loadImage("Perro.png");
ducky=loadImage("Pato.png");
pedro=loadImage("Tortuga.png");
roger=loadImage("Pez.png");
pua=loadImage("Conejo.png");
tabla=loadImage("Tabla.png");
inst=loadImage("Instrucciones.png");

shushuCara=loadImage("GatoCara.png");
robinCara=loadImage("PerroCara.png");
duckyCara=loadImage("PatoCara.png");
pedroCara=loadImage("TortugaCara.png");
rogerCara=loadImage("PezCara.png");
puaCara=loadImage("ConejoCara.png");

fondo2=loadImage("3.png");
gana=loadImage("win.png");

opcion1=new Cuadro1(120,240,30,20);
opcion2=new Cuadro2(380,240,30,20);
opcion3=new Cuadro3(640,240,30,20);
opcion4=new Cuadro4(120,490,30,20);
opcion5=new Cuadro5(380,490,30,20);
opcion6=new Cuadro6(640,490,30,20);
for (int i = 0; i < drops.length; i++){
  drops[i] = new Drop();}

}//fin setup

void draw(){
  clear();
  switch(pantalla){
  
    case 0:
    intro.play();
   deldrop();
    break;
    
   case 1:
   background(#DEC0E5);
   reglas.play();
   fill(0);
   image(tabla,160,300);
   image(inst,160,80);
   textSize(25);
   text("Presiona 'm' si quieres regresar al menú",168,560);
   if(keyPressed){
    if((key=='m')||(key=='M')){
    pantalla=0;
    }  //cierre de if'x'
  
  }  //cierre de keyPressed
  
   break; 
   
   case 2:
   background(#BEE0DD);
   text("Da clic en el número del personaje que elijas",200,560);
   personajes.play();
   opcion1.rectangulo();
   image(shushu,45,15);
   opcion2.rectangulo();
   image(robin,303,12);
   opcion3.rectangulo();
   image(ducky,561,12);
   opcion4.rectangulo();
   image(pedro,43,260);
   opcion5.rectangulo();
   image(roger,303,265);
   opcion6.rectangulo();
   image(pua,561,270);
   break;
   
    case 3: 
   image(fondo2,0,0);
   pelea.play();
   ataque();
   vida();
   break; 
    
    case 4:
    image(gana,0,0);
    ganador.play();
    ganador();
    break;
    
  }//fin switch
  
}//fin draw

void stop(){
intro.close();
personajes.close();
reglas.close();
pelea.close();
ganador.close();
AudioManager.stop();
super.stop();
}

void detener(){
 byte mostrar;
   while(true){
   mostrar = byte(floor(random(1,5)));
   println(mostrar);
   break;
   }//fin while
noLoop();
}