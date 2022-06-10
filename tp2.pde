//https://youtu.be/vOM7U11Pdmg
//alumna: Valeria Parra.
//legajo: 91547/4.
// comisión 5 (profesor David Bedoian).
//tp2 ilusión optica.

int i=0; //declaración de variable.

void setup(){
size(500, 500); //tamaño de mi pantalla.
rectMode(RADIUS); //ubica los ellipse con respecto al radio.
noStroke(); //para quitar el borde a las figuras.
}

void draw(){
  translate(width/2, height/2); //ubica mis figuras en el centro, ancho y alto divido 2.
  background(255,188,240); //es elcolor de mi fondo (rosa pastel).
  for (i=0; i<40; i++){ //ciclo for que dibuja mis ellipses de forma que la ilusión optica funcione.
  rotate(map(mouseX,0,width,PI/2,PI/80)); //rotate conformado por map (min. 0 y máx. ancho de la pantalla) junto con la variable PI para calcular diámetro de las figuras. 
  translate(0,map(mouseY,0,height,0,10)); 
  if(i%2 == 0) //cuando i valga par pinta color blanco.
  fill(255);
  else //si no se va a pintar de un color random, en la escala de los blancos.
  fill(random(0.255),random(0.255),random(0.255));
  float radio = (width/3) - i*6.8; 
  ellipse (0,0,radio,200); //figura ellipse ubicada en los puntos 0,0 y su tamaño es radio, 200.
  }
  if (keyPressed){ 
  if (key == 'w' || key == 'W'); //boton para volver al comienzo cada vez que se presiona la letra 'w' o 'W'.
  i = 0;
  mouseX=0;
  mouseY=0;
  }
}
