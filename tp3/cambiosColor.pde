void reinicio() {
  if (key == 'r' || key == 'R') {
    colorCuadraditos = color(random(255));

} else if (key == 'v' || key == 'V') {
  colorCuadrados = color(random(255), random(255), random(255));
    
}else if (key == ' ') {
  colorCuadraditos = color(255);
  colorCuadrados = color(255);
}
}
       
void dibujarCuadradito(float x, float y) {
  rect(x, y, mini, mini);
}

float calcularMini(float t) {
  return t * 0.18;
}
