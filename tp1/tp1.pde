//Nombre y apellido: Valeria Parra
//Legajo: 91547/4
//Profesor: David Bedoian
//Comisión: 3
//Trabajo Práctico nº1 animando con código

PFont fuente;
PImage img1, img2, img3, img4;
int pantalla = 0;
float desp, desp2, desp3, desp4, desp5, titulo;

void setup() {
  
  size (500, 500);//tamaño de la pantalla
  img1 = loadImage("ima1.jpg");//imagen de la portada
  img1.resize(500,300);//tamaño de la imagen
  img2 = loadImage("ima2.jpg");//imagen de los personajes
  img2.resize(500,260);//tamaño de la imagen
  img3 = loadImage("ima3.jpg");
  img3.resize(500,260);
  img4 = loadImage("ima4.jpg");
  img4.resize(500,260);
  fuente = loadFont("VinerHandITC-48.vlw");//fuente elegida
  pantalla = 0;//pantalla de inicio
  desp = 500;//desde donde comienza a desplazarse el texto
  desp2 = 300;//desde donde comienza a desplazarse el texto 2
  desp3 = 400;//desde donde comienza a deslazarse el texto 3
  desp4 = 500;
}

void draw() {

  println(mouseX, mouseY);
  if (mousePressed) {
    if (mouseButton == LEFT){//si se preciona el boton izquierdo del mouse se vuelve a la pantalla 1 de personajes principales
      pantalla = 1;

  }}
  if (pantalla == 0){
 
  background(0);//color de fondo
  textFont(fuente);//fuente
  fill(random(200, 255), random(200, 255), random(200, 255));//color de la fuente
  textSize(48);//tamaño de la fuente
  text("\n       Coraline \ny la puerta secreta", 30, desp);//texto y tamaño de texto
  desp = desp -1.2;//desplazamiento hacia arriba
  
  if (desp < 100){
  pantalla = 1;
  desp = 60;
  }
  
  image(img1, 0, 0);} 

  else if (pantalla == 1){
  
  background(0);
  textFont(fuente);//fuente
  fill(200, 201, 6);//color de la fuente
  textSize(35);//tamaño de la fuente
  text("Personajes principales: \nCoraline Jones \nLa otra madre \nOtro padre \nWybie Lovat \nGato", 15, desp2);//texto y tamaño de texto
  desp2 = desp2 -0.5;//desplazamiento hacia arriba
  
  if (desp2 <= -330){
  pantalla = 2;
  desp2 = 60;

}
  image(img2, 0, 245);}
  
  else if (pantalla == 2){
  
  background(0);
  textFont(fuente);//fuente
  fill(200, 201, 6);//color de la fuente
  textSize(35);//tamaño de la fuente
  text("Todos los personajes: \nCoraline Jones \nLa otra madre \nWybie Lovat \nSeñor Bobinsky \nOtro padre \nGato \nCharles Jones \nMel Jones \nSeñorita Spink \nSeñorita Forcible", 15, desp3);//texto y tamaño de texto
  desp3 = desp3 -0.5;//desplazamiento hacia arriba
  
  if (desp3 <= -380){
  pantalla = 3;
  desp3 = 60;
  
}
 
 image(img3, 0, 0);}
  
  else if (pantalla == 3){
  
  background(0);
  textFont(fuente);//fuente
  fill(200, 201, 6);//color de la fuente
  textSize(30);//tamaño de la fuente
  text("Dirección: Henry Selick \nProducción: Claire Jennings \nMontaje: Christopher Murrie \nMusica: Bruno Coulais \n\n\n Fin.", 15, desp4);//texto y tamaño de texto
  desp4 = desp4 -0.5;//desplazamiento hacia arriba
    
  if (desp4 <= 100){
  pantalla = 3;
  desp4 = 60;

}
  image(img4, 0, 0);}

}
