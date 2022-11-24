class Terreno{//clase
  int pasoX = 12;
  int cantidad_picos = 100;
  int paso_valle=25;
  float [] valoresX = new float[1200/pasoX];
  float [] valoresY = new float[1200/pasoX];
  
Terreno(int ancho, int largo){//constructor
  valoresX[0] = 0;
  valoresY[0] = largo;
  valoresX[0] = pasoX;
  valoresY[0] = largo-50;
  int puntoX = pasoX; //coordenada X punto 2
  float puntoY = largo-50; //cooredenada Y punto 2
  int contador = 0;
  for(int punto=2; punto<=(cantidad_picos-2); punto++){
    puntoX = puntoX + pasoX;
    valoresX[punto]=puntoX;
    contador += 1;
    if((contador%paso_valle)!=0){
      puntoY = random(550, largo-50);
      valoresY[punto]=puntoY;
    } else{
      valoresY[punto] = puntoY;
    }
  }
  valoresX[cantidad_picos-1]=ancho;
  valoresY[cantidad_picos-1]=largo-80;
}

void crearTerreno(){//métodos-propiedades
  fill(0);
  stroke(255);
   beginShape();
  for(int i=0; i<cantidad_picos; i++){
    vertex(valoresX[i],valoresY[i]);
  }
  vertex(ancho,largo);
  endShape();
}
float [] getY(){
  return valoresY;
}
float [] getX(){
  return valoresX;
}
}
