//Daiana Oliva leg 50682/4 

int l=800, col=0;
int opcion=0;
float angulo;
int cant=100;
int mappyX=30;
int mappyY=l;
float sumaRotacion=0;
int espaciado=30;
float posX, posY;

void setup() {
  size(600, 600);
  noStroke();
  fill(255);
  rectMode(CENTER);
  posX=width/2;
  posY=height/2;
}

void draw() {
  background(255);  
  translate(posX, posY);
  boolean cambiaColor=true;
  for (int i=mappyY; i>0; i=i-mappyX) {

    if (cambiaColor) {
      fill(0, 0, col);
    } else {
      fill(255);
    }

    rect(0, 0, i, i, 40);
    cambiaColor=!cambiaColor;

    angulo = (mappyY-i)/1000;

    rotate(50);
  }
}

void mouseMoved() {

  if (opcion==0)
  {
    if (mouseX>width/2 && col < 255) {
      col = col + 5;
    }
    if (mouseX<width/2 && col > 0) {
      col = col - 5;
    }
  }
}

void cuadrado() {
  angulo = angulo + 0.05;
  float c = angulo;
  translate(width/2, height/2);
  rotate(c);
  fill(col);
  rect(0, 0, l, l, 40);

  if (l > 5) {
    l = l - 30;
  }
  if (col == 0) {
    col = 255;
  } else {
    col = 0;
  }
}
