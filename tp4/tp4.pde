//TP.4 Programando con Objetos, una aproximación.
//Comisión N.º3 Prof. David Bedoian (14:00 - 16:00 hs)
//Integrantes: Valeria Parra, Lucia Mendez, Irupé Torres.
//Link a YouTube: https://www.youtube.com/watch?v=vmvMhcCF_rg&t=4s

Estrella[] estrellas = new Estrella[100];
Luna[] lunas = new Luna[1];
Ciudad[] ciudades = new Ciudad[15];
Auto[] autos = new Auto[3];
float x, y, x1, y1, x2, y2;
float vel, vel1, vel2;

void setup(){
  size (600,600); 
  for (int i = 0; i < estrellas.length; i++){
    estrellas[i] = new Estrella();
  }
  for (int i = 0; i < lunas.length; i++){
    lunas[i] = new Luna();
  }
  for (int i = 0; i < ciudades.length; i++){
    ciudades[i] = new Ciudad();
  }
  for (int i = 0; i < autos.length; i++){
    autos[i] = new Auto();
  }
  x = 0;
  y = 520;
  vel=0.7;
  x1 = 0;
  y1 = 350;
  vel1= 1;
  x2 = 0;
  y2 = 200;
  vel2= 1.5;
}

void draw(){
  background (0);
  for (int i = 0; i < estrellas.length; i++){
    estrellas[i].display();
  }
  for (int i = 0; i < lunas.length; i++){
    lunas[i].display();
  }
  for (int i = 0; i < ciudades.length; i++){
    ciudades[i].display();
  }
  for (int i = 0; i < autos.length; i++){
    autos[i].display();
  }
  ellipse (mouseX, mouseY, 50, 50);
  fill (255,5,5);
  rect (x, y, 100, 50);
  x+=vel;
  fill (7, 32, 242);
  rect (x1, y1, 100, 50);
  x1+=vel1;
  fill (128, 242, 7);
  rect (x2, y2, 100, 50);
  x2+=vel2;
}
