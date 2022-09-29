class Auto{

float size1;
float size2;
float r;
float g;
float b;

Auto(){
fill (255,5,5);
rect (x, y, 100, 50);
size1 = 40;
size2 = 20;
r = random (255);
g = random (255);
b = random (255);
}

void display(){
 noStroke ();
 fill (r,g,b);
 rect (x,y,size1,size2);
}  
}
