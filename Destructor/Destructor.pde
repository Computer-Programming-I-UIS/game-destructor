// Proyecto Juego Destructor
// Programacion de computadores 1
// Autores:
// Jose Eugenio Vargas Vargas codigo 2192137
// Andres Saavedra codigo 21*****

PImage inicio;
PImage mantel;
PImage cucaracha;

void setup(){
  size(800,800);
  inicio = loadImage("inicio.jpg");
  mantel = loadImage("mantel.jpg");
  cucaracha = loadImage("cucaracha.png");
}
void draw(){
  background(mantel);
}
