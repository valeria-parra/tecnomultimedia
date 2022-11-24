//tp5 minijuego. "Misión 39"
//Comisión Nº.3 (David Bedoian)
//Alumna: Valeria Carolina Parra 
//Link al video de YouTube: 

//Cómo se juega: >Flecha derecha: rotación a la derecha 
//>Flecha izquierda: rotación a la izquierda
//>Tecla espacio: impulsa al cohete
//>Tecla enter: navegación por las diferentes escenas
import processing.sound.*;

//variables  
int ancho=120;
int largo=700;
float rot=0;
boolean impulsar,enter;
float minimo;
int escena;
PImage fondoInicio,fondoGanaste,fondoPerdiste,fondoEstrellas,cohetee;
boolean estado;
int segundos,minutos,segundo0,minuto0;
int puntos;
SoundFile sonido; 

//definición de objetos
Terreno montanas = new Terreno (ancho,largo);
Cohete cohete = new Cohete ();

//inicialización
void setup(){
 size (1200,700);
 escena = 1;
 enter = false;
 minimo = 1;
 puntos = 0;
 
//fondo de escenas
fondoInicio = loadImage ("escenaInicio.jpg");
fondoGanaste = loadImage ("escenaGanaste.jpg");
fondoPerdiste = loadImage ("escenaPerdiste.jpg");
fondoEstrellas = loadImage ("fondoEstrellas.jpg");
cohetee = loadImage ("cohete2.png");

//sonido
sonido = new SoundFile (this, "sonidoEspacio.mp3");
sonido.play();
}

//ejecución
void draw(){
  switch (escena){
    case 1:
    background(fondoInicio);
    if(enter==true){
      escena=2;
    }
    enter = false;
    segundo0 = second();
    minuto0 = minute();
    break;
    case 2:
    background(fondoEstrellas);
    montanas.crearTerreno();
    cohete.moverCohete(rot,impulsar,cohetee);
    impulsar = false;
    if(cohete.calcularDistancia(montanas.getX(),montanas.getY())<minimo){
      minimo = cohete.calcularDistancia(montanas.getX(),montanas.getY());
      if(cohete.getCondicion()==true){
      if(cohete.getVelocidad()<0.6){
        puntos = puntos+25;
        estado = true;
      }
      } 
      else {
        puntos = puntos-25;
        estado = false;
      } 
      escena = 3;
    }

//textos
fill (255);
textSize (20);
text ("Altitud: "+ round(largo-cohete.getPosY()), 1035, 20);
text ("Velocidad: "+ cohete.getVelocidad(), 1035, 45);
text ("Puntos: "+ puntos, 10, 20);
text ("Tiempo: "+ (minute()- minuto0)+":"+(second()-segundo0), 10, 45);
 break;
 case 3:
 if(estado == true){
   background(fondoGanaste);
   if(enter == true){
     resetVariables();
     escena = 2;
   } 
   enter = false;
 }
   else{
     background(fondoPerdiste);
     if(enter == true){
       resetVariables();
       escena = 2;
     } 
     enter = false;
     }
   break; 
 }
}

//control por teclas
void keyPressed(){
  if(keyPressed){
    if(keyCode == RIGHT) rot+=2; //derecha
    if(keyCode == LEFT) rot-=2; //izquierda
    if(keyCode == ' ') impulsar = true;
    if(keyCode == ENTER) enter = true;
 }
}

//reseteo variables 
void resetVariables(){
  cohete.setPosicion();
  minimo = 1; 
  segundo0 = second();
  minuto0 = minute();
}
