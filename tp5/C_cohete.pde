class Cohete{//clase
 float posX=random(10, 1035);
 float posY=10;
 float impulso=5;
 float velocidad=0;
 float gravedad=0.001;
 boolean condicion;

void moverCohete(float angulo, boolean impulsar, PImage cohetee){//métodos - propiedades
  if(impulsar == true){
    fill(#FF9E00);} else{
      fill(255);
    }
    noStroke();
    pushMatrix();
    translate(posX,posY);
    rotate(radians(angulo));
    triangle(0,0,10,-20,-10,-20);
    popMatrix();
    pushMatrix();
    translate(posX,posY);
    rotate(radians(angulo));
    image(cohetee, -27, -70);
    popMatrix();
    if(impulsar==true){
      posY = posY-impulso;
      posX = posX+impulso*tan(radians(angulo));
      velocidad = velocidad-25*gravedad;
    }
    posY = posY + velocidad;
    velocidad = velocidad + gravedad; 
}
float calcularDistancia(float [] valoresX, float [] valoresY){
  float minimoX = 45421, minimoY = 45897;
  float distanciaX,distanciaY;
  int posArrayX = 10000;
  for(int i=0; i<valoresX.length; i++){
    distanciaX = abs(posX - valoresX[i]);
    if(distanciaX < minimoX){
      minimoX = distanciaX;
      posArrayX = i;
    }
    print(posArrayX);
    print('\n');
  }
  distanciaY = abs(posY - valoresY [posArrayX]);
  if(distanciaY < minimoY){
    minimoY = distanciaY;
    if(posArrayX == 0 && valoresY[0] == valoresY[1]){
      condicion=true;
    }
    if(posArrayX > 0 && posArrayX <(valoresY.length-2) && (valoresY[posArrayX] == valoresY[posArrayX-1] || valoresY[posArrayX] == valoresY[posArrayX+1])){
      condicion = true;
    }
    if(posArrayX ==(valoresY.length-1) && valoresY[posArrayX] == valoresY[posArrayX-1]){
      condicion = true;
    }
  }
return minimoY;}


void setPosicion(){
  posX= random(10,1035);
  posY = 10;
  velocidad = 0;
}
float getPosY(){
  return posY;
}
float getVelocidad(){
  return velocidad;
}
boolean getCondicion(){
  return condicion;
}
}
