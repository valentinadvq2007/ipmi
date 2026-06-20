//valentina del valle   
//legajo= 126977/7
//comision/2
//https://youtu.be/hAnfoVFHyMs
  
PImage foto; 
int cant = 9;
float tam;
float mini;
color colorCuadraditos = color(255);
color colorCuadrados = color(255);

void setup() {
  size(800, 400);
  foto = loadImage("11.jpg");

  tam = 400.0 / cant;
  mini = calcularMini(tam);

  rectMode(CORNER);
  noStroke();
}

void draw() {
  background(150);

image(foto, 0, 0, 400, 400);

for (int i = 0; i < cant; i++) {
  for (int j = 0; j < cant; j++) {

float x = 400 + i * tam;
float y = j * tam;

boolean mouseEncima = mouseX > x && mouseX < x + tam && mouseY > y && mouseY < y + tam;

push();

if (mouseEncima) {
  float d = dist(mouseX, mouseY, x + tam/2, y + tam/2);
  float angulo = map(d, 0, tam, 45, 5);

translate(x + tam/2, y + tam/2);
rotate(radians(angulo));
translate(-tam/2, -tam/2);
} else {
translate(x, y);
}

if ((i + j) % 2 == 0) {
  fill(42);
  rect(0, 0, tam, tam);
  
  fill(colorCuadraditos);
  stroke(3);

// 4 cuadraditos
if ((i*3 + j*5) % 6 == 0) {
  for (int a = 0; a < 2; a++) {
    for (int b = 0; b < 2; b++) {
      dibujarCuadradito(a * (tam - mini), b * (tam - mini));
    }
  }
}
// 3 cuadraditos
else if ((i*7 + j*2) % 4 == 0) {
  for (int a = 0; a < 2; a++) {
    for (int b = 0; b < 2; b++) {
      if (!(a == 1 && b == 1)) {
        dibujarCuadradito(a * (tam - mini), b * (tam - mini));
      }
    }
  }
}
// 2 cuadraditos
else {
for (int a = 0; a < 2; a++) {
  for (int b = 0; b < 2; b++) {
    if (a == b) {
      dibujarCuadradito(a * (tam - mini), b * (tam - mini));
    }
  }
 }
}

} else {
  fill(colorCuadrados);
  rect(0, 0, tam, tam);
}
pop();
}
}
}

void keyPressed() {
 reinicio();
 
}
  
