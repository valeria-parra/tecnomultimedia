//https://www.youtube.com/watch?v=-qr_etCC68o
//Nombre y Apellido: Valeria Parra
//Legajo: 91547/4
//Profesor: David Bedoian
//Comisión: 3
//Trabajo Práctico nº3 videojuego

//configurar pantalla
void setup (){
  
  size (800,600);
  background (0);
  cursor (HAND);
    x = new float [n];
  y = new float [n];
  vx = new float [n];
  vy = new float [n];
  c = new color [n];
  for (int i = 0; i<n; i++){
    c[i]= color(random(0,255),random(0,255),random(0,255));
    x[i] = random(x0+r, x0+w-r);
    y[i] = random(y0+r, y0+h-r);
    vx[i] = random(-2,2);
    vy[i] = random(-2,2);
    fill(c[i]);
    circle(x[i],y[i],2*r);
  }
}

//programa principal
void draw (){
 
  for (int i = 0; i<n; i++){
    x[i] = x[i] + vx[i];
    y[i] = y[i] + vy[i];
    if(y[i] + r > h+y0){
      y[i] = h + y0 - r;
      vy[i] = - vy[i];
    }
  if(y[i] - r < y0){
      y[i] = y0 + r;
      vy[i] = - vy[i]; 
  }
  if(x[i] + r > w+x0){
      x[i] = w + y0 - r;
      vx[i] = - vx[i];
  }
  if(x[i] - r < x0){
      x[i] = x0 + r;
      vx[i] = - vx[i];
  }
  fill(c[i]);
  circle(x[i],y[i],2*r);
  }

  if ((jugar == 1) && (pinta ==1)){
    dibujarFormas ();
  }
}

//funciones/dibujar formas
void dibujarFormas (){
  
  background (0);
  
  //distracción
  for (int i=0; i<=puntos; i++){
    fill(floor(random(0,255)),floor(random(0,255)),floor(random(0,255)));
    ellipse(floor(random(50,750)),floor(random(100,550)),tam,tam);
  }
  
  //objeto
  posX = floor(random(50,750));
  posY = floor(random(100,550));
  fill (255);
  ellipse (posX,posY,tam,tam);
  
  //puntos
  fill(255);
  textAlign(CENTER);
  textSize(18);
  text("PUNTOS: " + (puntos),250,30);
  
  //tiempo
  fill(255);
  textAlign(LEFT);
  textSize(18);
  text("TIEMPO: " + millis()/1000,20,30);
  
  //nueva pantalla
  pinta = 0;
}

//click 
void mousePressed(){
  
  if (jugar == 1){
   
    if (pinta == 0){
     pinta = 1;
   }
   if ((mouseX > posX-tam) && (mouseX < posX+tam) && (mouseY > posY-tam) && (mouseY < posY+tam)){
     puntos += 1;
   }
   else {
     jugar = 0;
     
     //escribir GAME OVER
     fill(255);
  textAlign(RIGHT);
  textSize(18);
  text("GAME OVER: " + puntos + "en" + millis()/1000 + "segs", 780,30);
   }   
  }
}

  
