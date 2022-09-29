class Ciudad{
float x;
float y;
float size1;
float size2;
float x2;
float y2;
float size3;
float size4;

Ciudad (){
x = random(-50,width);
y = random(100,400);
size1 = random (50,100);
size2 = height;
x2 = random(-50,width);
y2 = random(300,500);
size3 = random (50,75);
size4 = height;
}

void display(){
  noStroke();
  fill (25,25,75);
  rect (x,y,size1,size2);
  rect (x2,y2,size3,size4);
  fill (50);
  rect (0,500,width,100);
}
}
