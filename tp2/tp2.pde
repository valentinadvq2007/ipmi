//juegos: mario bross
//Valentina del Valle Quintana
//comision: 2
//legajo: 126977/7

PImage nube; 
PImage pasto;
PImage moneda; 
PImage castillo; 
PImage mario; 
PImage luigi; 
PImage peach; 
PImage bowser; 
PImage vida; 
PImage crecer; 
PImage hielo;
PImage fuego; 
PImage papa; 
PImage pinchos;
PImage tortuga; 
PImage estrella; 
PImage toad;
PImage marioypeach;
PImage luigi2;
PImage bowser2;


 //letra
PFont nuevaLetra;

float nubeX1 = 0;
float nubeX2= 300;
float nubeX3= 800;
float velNube = 1;

int pantalla = 0;

//boton de jugar
int botonX = 256;
int botonY = 415;
int anchoBoton = 120;
int altoBoton = 50;

//tiempo de las pantallas
int tiempoPantalla1;
int tiempoPantalla2;
int tiempoPantalla3;
int tiempoPantalla4;
int tiempoPantalla5;

float marioX = -600;
float luigiX = 650;

float bowserX = -250;
float peachX = 700;
float toadY= 900;

float fuegoY = -200;
float hieloY = -300;
float estrellaY = -500;
float vidaY = -700;
float crecerY = -800;

float tortugaY = 700;
float pinchosY = 850;
float papaY = 1000;

float marioypeachX = -300;
float luigi2X = -500;
float bowser2X = -700;
 
//transicion de los textos
float transicionTexto = 0;
float transicionTexto2 = 0;
float transicionTexto3 = 0;
float transicionTexto4 = 0;
float transicionTexto5 = 0;

//movimientos de los textos
float textoPantalla3X = -600;
float textoPantalla2X =-600;
float textoPantalla2pX = 1000;
float textoPantalla1X = -600;
float textoPantalla1lX =1000;
float textoPantalla4X = 1000;
float textoPantalla5X =-600;

//movimientos de rectangulo
float rectPantalla1X = 1000;
float rectPantalla1lX = -600;
float rectPantalla2X = 1000;
float rectPantalla2pX = -600;
float rectPantalla3Y = 600;
float rectPantalla4X = 1000;
float rectPantalla5Y = -150;

//opacidad pantalla5
float opacidadFinal = 255;


void setup(){

size(640,480);

nube = loadImage("nube.png.png");
pasto = loadImage("pasto.png.png");
castillo = loadImage("castillo.png.png");
moneda = loadImage("moneda.png.png");

mario = loadImage("mario.png.png");
luigi = loadImage("luigi.png.png");
bowser = loadImage("bowser.png.png");
peach = loadImage("peach.png.png");
toad =loadImage("toad.png.png");

fuego = loadImage("fuego.png.png");
hielo = loadImage("hielo.png.png");
estrella = loadImage("estrella.png.png");
vida = loadImage("vida.png.png");
crecer = loadImage("crecer.png.png");

tortuga = loadImage("tortuga.png.png");
pinchos =loadImage("pinchos.png.png");
papa=loadImage("papa.png.png");

marioypeach=loadImage("marioypeach.png.png");
luigi2=loadImage("luigi2.png.png");
bowser2=loadImage("bowser2.png.png");

nuevaLetra = loadFont("letranueva.vlw");
textFont(nuevaLetra);
}



void draw(){


dibujarFondo();

nubeX1 += velNube;
nubeX2 += velNube;
nubeX3 += velNube;

if(nubeX1 > width){
  nubeX1 = -200;
}

if(nubeX2 > width){
  nubeX2 = -200;
}

if(nubeX3 > width){
  nubeX3 = -200;
}


//pantalla de inicio
if(pantalla == 0){
image(castillo,170,120,300,300);
image(moneda,40,170,40,40);
image(moneda,240,214,25,25);
image(moneda,388,214,25,25);
image(moneda,570,160,35,35);

//botonjugar
fill(255,247,3);
rect(botonX,botonY,anchoBoton,altoBoton);
fill(0);
textSize(40);
text("JUGAR",278,455);
textSize(55);
fill(0,0,255);

//letras de la pantalla de inicio
text("S",250,75);
fill(250,255,3);
text("U",276,75);
fill(255,0,0);
text("P",309,75);
fill(0,255,0);
text("E",338,75);
fill(250,255,3);
text("R",365,75);
textSize(70);
fill(255,0,0);
text("M",233,135);
fill(0,255,0);
text("A",280,135);
fill(250,255,3);
text("R",320,135);
fill(0,0,255);
text("I",358,135);
fill(0,255,0);
text("O",380,135);
}

//PANTALLA1
if(pantalla == 1){
fill(0,0,0,80);
rect(rectPantalla1X, 350, 260, 100);
fill(0,0,0,80);
rect(rectPantalla1lX, 350, 285, 100);

if(transicionTexto < 255){
  transicionTexto += 5;
}
 
fill(255,transicionTexto);
textSize(22);

text("Mario es el protagonista del juego \n el cual es el encargado  de salvar \n a peach y al reino champiñon.",textoPantalla1X,380);
text("Luigi es el hermano de mario que lo \n acompaña en todas sus aventuras,\n aunque le tenga miedo a la oscuridad.",textoPantalla1lX,380);

if(tiempoPantalla1 > 30 && tiempoPantalla1 < 150){
  textoPantalla1X = map(tiempoPantalla1, 30, 150, -width, 45);
}

else if(tiempoPantalla1> 600 && tiempoPantalla1 < 650){
  textoPantalla1X = map(tiempoPantalla1, 600, 650, 50, -width);
}
if(tiempoPantalla1 > 30 && tiempoPantalla1 < 150){
  rectPantalla1X = map(tiempoPantalla1, 30, 150, width + 500, 28);
}
else if(tiempoPantalla1 > 600 && tiempoPantalla1 < 650){
  rectPantalla1X = map(tiempoPantalla1, 600, 650, 28, width + 500);
}

if(tiempoPantalla1 > 50 && tiempoPantalla1< 150){
textoPantalla1lX = map(tiempoPantalla1, 50, 150, +width, 330);
}

else if(tiempoPantalla1 >600 && tiempoPantalla1 < 650){
textoPantalla1lX = map(tiempoPantalla1, 600, 650, 50, width+500);
}

if(tiempoPantalla1 > 50 && tiempoPantalla1 < 150){
  rectPantalla1lX = map(tiempoPantalla1, 50, 150, -600, 322);
}
else if(tiempoPantalla1 > 600 && tiempoPantalla1 < 650){
  rectPantalla1lX = map(tiempoPantalla1, 600, 650, 322, -600);
}

image(mario,marioX,120,220,220);
if(tiempoPantalla1 > 50 && tiempoPantalla1 < 150){
  marioX = map(tiempoPantalla1, 50, 150, -300, 80);
}

else if(tiempoPantalla1 > 500 && tiempoPantalla1 < 580){
  marioX = map(tiempoPantalla1, 500, 580, 80, -width) ;
}


image(luigi, luigiX, 120, 220, 220);


if(tiempoPantalla1 > 50 && tiempoPantalla1 < 150){
  luigiX = map(tiempoPantalla1, 50, 150, width + 300, 350);
}

else if(tiempoPantalla1 > 500 && tiempoPantalla1 < 580){
  luigiX = map(tiempoPantalla1, 500, 580, 350, width + 300);
}

tiempoPantalla1++;
if(tiempoPantalla1 >= 680){
  pantalla = 2;
 }

}


//PANTALLA2
if(pantalla == 2){
image(toad,450,toadY,100, 100);
if(tiempoPantalla2> 50 && tiempoPantalla2 < 150){
  toadY = map(tiempoPantalla2,  50, 150, height + 200, 175);
}

else if(tiempoPantalla2> 500 && tiempoPantalla2 < 580){
 toadY = map(tiempoPantalla2,  500, 580, 175, height+200);
}


image(pasto,-40,235,450,245);
image(pasto,320,235,450,245);
 
fill(0,0,0,80);
rect(rectPantalla2X, 360, 395, 100);

fill(0,0,0,80);
rect(rectPantalla2pX, 20, 475, 100);
    
if(transicionTexto2 < 255){
  transicionTexto2 += 5;
}

fill(255,transicionTexto2);

text("Bowser es el enemigo de mario, el cual esta enamorado \n de la princesa  peach y la secuestra pensando que asi\n va a lograr que ella se case con el.",textoPantalla2X,390);
text("ella es la princesa peach ama el color rosa y vive en un gran \n castillo dentro del Reino Champiñón. y siempre que necesita \n ayuda sus amigos  Toads estan ahi para ayudarla.",textoPantalla2pX,43);

if(tiempoPantalla2 > 50 && tiempoPantalla2 < 150){
  textoPantalla2X = map(tiempoPantalla2, 50, 150, -width, 45);
}

else if(tiempoPantalla2 >600 && tiempoPantalla2 < 650){
  textoPantalla2X = map(tiempoPantalla2, 600, 650, 50, -width);
}

image(bowser,bowserX,150,225,225);
if(tiempoPantalla2> 50 && tiempoPantalla2 < 150){
  bowserX = map(tiempoPantalla2,  50, 150, -300, 80 );
}

else if(tiempoPantalla2> 500 && tiempoPantalla2 < 580){
  bowserX = map(tiempoPantalla2,  500, 580, 80, -width);
}

if(tiempoPantalla2 > 50 && tiempoPantalla2 < 150){
  rectPantalla2X = map(tiempoPantalla2, 50, 150, -600, 28);
}

else if(tiempoPantalla2 > 600 && tiempoPantalla2 < 650){
  rectPantalla2X = map(tiempoPantalla2, 600, 650, 28, -600);
}
    
image(peach,peachX,118,210,210);
if(tiempoPantalla2 > 50 && tiempoPantalla2 < 150){
  peachX = map(tiempoPantalla2, 50, 150, width + 300, 300);
}

else if(tiempoPantalla2 > 500 && tiempoPantalla2 < 580){
  peachX = map(tiempoPantalla2, 500, 580, 350, width + 300);
}


if(tiempoPantalla2 > 50 && tiempoPantalla2 < 150){
  textoPantalla2pX = map(tiempoPantalla2, 50, 150, +width, 150);
}

else if(tiempoPantalla2 >600 && tiempoPantalla2 < 650){
  textoPantalla2pX = map(tiempoPantalla2, 600, 650, 50, +width);
}

if(tiempoPantalla2 > 50 && tiempoPantalla2 < 150){
  rectPantalla2pX = map(tiempoPantalla2, 50, 150, width + 500, 115);
}

else if(tiempoPantalla2 > 600 && tiempoPantalla2 < 650){
  rectPantalla2pX = map(tiempoPantalla2, 600, 650, 115, width + 500);
}

   
tiempoPantalla2++;

if(tiempoPantalla2 >= 650){
  pantalla = 3;
}
}

//PANTALLA3
if(pantalla == 3){
  fill(0,0,0,80);
  rect(20, rectPantalla3Y, 600, 80);
if(transicionTexto3 < 255){
  transicionTexto3 += 5;
}


fill(255,transicionTexto3);
textSize(25);
text("Mario puede conseguir poderes especiales a lo largo de cada nivel.",textoPantalla3X,65);

if(tiempoPantalla3 > 50 && tiempoPantalla3 < 150){
  textoPantalla3X = map(tiempoPantalla3, 50, 150, -width, 70);
}

else if(tiempoPantalla3 >500 && tiempoPantalla3 < 580){
  textoPantalla3X = map(tiempoPantalla3, 500, 580, 50, -width);
}

if(tiempoPantalla3 > 50 && tiempoPantalla3 < 150){
  rectPantalla3Y = map(tiempoPantalla3, 50, 150, height + 100, 20);
}

else if(tiempoPantalla3 > 500 && tiempoPantalla3 < 580){
  rectPantalla3Y = map(tiempoPantalla3, 500, 580, 20, -100);
}

image(fuego,50,fuegoY,100,100);
image(hielo,170,hieloY,100,100);
image(estrella,280,estrellaY,100,100);
image(vida,390,vidaY,100,100);
image(crecer,500,crecerY,100,100);

if(tiempoPantalla3 > 50 && tiempoPantalla3 < 150){
  fuegoY = map(tiempoPantalla3, 50, 150, -height, 175);
}

else if(tiempoPantalla3 > 500 && tiempoPantalla3 < 580){
  fuegoY = map(tiempoPantalla3, 500, 580, 180, -height);
}


if(tiempoPantalla3 > 100 && tiempoPantalla3 < 200){
  hieloY = map(tiempoPantalla3, 100, 200, -height, 175);
}

else if(tiempoPantalla3 > 500 && tiempoPantalla3 < 580){
  hieloY = map(tiempoPantalla3, 500, 580, 180, -height);
}


if(tiempoPantalla3 > 150 && tiempoPantalla3 < 250){
  estrellaY = map(tiempoPantalla3, 150, 250, -height, 175);
}

else if(tiempoPantalla3 > 500 && tiempoPantalla3 < 580){
  estrellaY = map(tiempoPantalla3, 500, 580, 180, -height);
}

if(tiempoPantalla3 > 200 && tiempoPantalla3 < 300){
  vidaY = map(tiempoPantalla3, 200, 300, -height, 175);
}

else if(tiempoPantalla3 > 500 && tiempoPantalla3 < 580){
  vidaY = map(tiempoPantalla3, 500, 580, 180, -height);
}

if(tiempoPantalla3 > 250 && tiempoPantalla3 < 350){
  crecerY = map(tiempoPantalla3, 250, 350, -height, 175);
}

else if(tiempoPantalla3 > 500 && tiempoPantalla3 < 580){
  crecerY = map(tiempoPantalla3, 500, 580, 180, -height);
}
tiempoPantalla3++;
if(tiempoPantalla3 >= 580){
  pantalla = 4;
}
}

//PANTALLA4
if(pantalla == 4){

image(tortuga,98,tortugaY,65,65);
if(tiempoPantalla4 > 50 && tiempoPantalla4 < 150){
  tortugaY = map(tiempoPantalla4, 50, 150, height + 200, 210);
}

else if(tiempoPantalla4 > 400 && tiempoPantalla4 < 480){
  tortugaY = map(tiempoPantalla4, 400, 480, 210, height + 200);
}


image(papa, 459, papaY, 69, 69);
if(tiempoPantalla4 > 100 && tiempoPantalla4 < 200){
  papaY = map(tiempoPantalla4, 100, 200, height + 200, 210);
}

else if(tiempoPantalla4 > 400 && tiempoPantalla4 < 480){
  papaY = map(tiempoPantalla4, 400, 480, 210, height + 200);
}

image(pasto,-40,235,450,245);
image(pasto,320,235,450,245);
image(pinchos, 250, pinchosY, 90,90);

if(tiempoPantalla4 > 150 && tiempoPantalla4 < 250){
  pinchosY = map(tiempoPantalla4, 150, 250, height + 200, 323);
}

else if(tiempoPantalla4 > 400 && tiempoPantalla4 < 480){
  pinchosY = map(tiempoPantalla4, 400, 480, 323, height + 200);
}
  
fill(0,0,0,80);
rect(rectPantalla4X, 60, 600, 100);
if(transicionTexto4 < 255){
  transicionTexto4 += 5;
}

fill(255,transicionTexto4);
textSize(25);
text("Mario y luigi deben evitar estos bichos peligrosos ya que si estan \n en contacto con alguno de ellos mueren.",textoPantalla4X,100);
    
if(tiempoPantalla4 > 50 && tiempoPantalla4 < 150){
  textoPantalla4X = map(tiempoPantalla4, 50, 150, +width, 70);
}

else if(tiempoPantalla4 >400 && tiempoPantalla4 < 450){
  textoPantalla4X = map(tiempoPantalla4, 400, 450, 50, width+500);
}
  

if(tiempoPantalla4 > 50 && tiempoPantalla4 < 150){
  rectPantalla4X = map(tiempoPantalla4, 50, 150, width + 500, 20);
}

else if(tiempoPantalla4 > 400 && tiempoPantalla4 < 450){
  rectPantalla4X = map(tiempoPantalla4, 400, 450, 20, width + 500);
}  
    
    
tiempoPantalla4++;

if(tiempoPantalla4 >= 500){
  pantalla = 5;
}
}

//PANTALLA5

if(pantalla == 5){

fill(0,0,0,80);
rect(20, rectPantalla5Y, 600, 115);

if(transicionTexto5 < 255){
  transicionTexto5 += 5;
}

if(tiempoPantalla5 > 450 && tiempoPantalla5 < 580){
  opacidadFinal = map(tiempoPantalla5, 450, 580, 255, 0);
}


fill(255,transicionTexto5);
textSize(25);
fill(255,transicionTexto5); 
textSize(25); 
text("Después de atravesar muchos peligros y enfrentarse a Bowser, Mario \ny Luigi lograron rescatar a la princesa Peach y devolver la paz al \nReino Champiñón. Gracias a su valentía y trabajo en equipo, una \nnueva aventura llegó a su final feliz.",textoPantalla5X,45);

if(tiempoPantalla5 > 50 && tiempoPantalla5 < 150){
textoPantalla5X = map(tiempoPantalla5, 50, 150, -width, 50);
}

else if(tiempoPantalla5 >500 && tiempoPantalla5 < 580){
  textoPantalla5X = map(tiempoPantalla5, 500, 580, 50, -width);
}

if(tiempoPantalla5 > 50 && tiempoPantalla5 < 150){
  rectPantalla5Y = map(tiempoPantalla5, 50, 150, -150, 20);
}

else if(tiempoPantalla5 > 500 && tiempoPantalla5 < 580){
  rectPantalla5Y = map(tiempoPantalla5, 500, 580, 20, -150);
}



tiempoPantalla5++;

tint(255, opacidadFinal);

image(marioypeach, marioypeachX, 150, 180, 180);
image(luigi2, luigi2X, 150, 180, 180);
image(bowser2, bowser2X, 150, 180, 180);

noTint();

if(marioypeachX < 420){
  marioypeachX += 2;
}

if(luigi2X < 250){
luigi2X += 2;
}

if(bowser2X < 80){
  bowser2X += 2;
}

fill(255,0,0);
rect(225,400,180,50);
fill(255);
textSize(30);
text("REINICIAR",266,437);
}
}
 //fondo fijo
void dibujarFondo(){
background(5,186,255);

image(nube, nubeX1, 0, 180,100);
image(nube, nubeX2, 120, 100,70);
image(nube, nubeX3, 100,180,100);
image(pasto,-40,235,450,245);
image(pasto,320,235,450,245);
}

void mousePressed(){

//boton de jugar
if(pantalla == 0){

if(mouseX > botonX &&
mouseX < botonX + anchoBoton &&
mouseY > botonY &&
mouseY < botonY + altoBoton){

pantalla = 1;
}
}


//boton de reiniciar
if(pantalla == 5){
if(mouseX > 240 &&
mouseX < 420 &&
mouseY > 400 &&
mouseY < 450){

pantalla = 0;
tiempoPantalla1 = 0;
tiempoPantalla2 = 0;
tiempoPantalla3 = 0;
tiempoPantalla4 = 0;
tiempoPantalla5 = 0;

marioX = -600;
luigiX = 650;

bowserX = -250;
peachX = 700;
toadY = 900;

fuegoY = -200;
hieloY = -300;
estrellaY = -500;
vidaY = -700;
crecerY = -1000;

tortugaY = 700;
pinchosY = 850;
papaY = 1000;

marioypeachX = -300;
luigi2X = -500;
bowser2X = -700;
opacidadFinal = 255;

rectPantalla1X = 1000;
rectPantalla1lX = -600;
rectPantalla2X = 1000;
rectPantalla2pX = -600;
rectPantalla3Y = 600;
rectPantalla4X = 1000;
rectPantalla5Y = -150;
}
}
}
