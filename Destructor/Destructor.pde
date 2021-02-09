// Proyecto Juego Destructor
// Programacion de computadores 1
// Autores:
// Jose Eugenio Vargas Vargas codigo 2192137
// Andres Saavedra codigo 21*****
virus[] corona = new virus[10];
PImage inicio;
PImage fondo;
PImage virrus;
PImage jabon;
boolean comienzo = true;
int puntaje = 0;
int maxpuntaje = 0;
int savedTime;
int totalTime = 15000;

void setup(){
  size(600,600);
  inicio = loadImage("inicio.jpg");
  fondo = loadImage("fondo.jpg");
  virrus = loadImage("virus.png"); 
  jabon = loadImage("jabon.png");

  
  savedTime = millis();
  
  for(int i=0; i<corona.length; i++) {
    corona[i] = new virus(random(width),random(height),100);  
  }
}
void draw(){
  background(fondo);
  
  if (keyPressed) {
    if (key == 'y' || key == 'Y') {
       comienzo = false;
    }
  }
  if (comienzo==true)
  {
    image(inicio, 0, 0);
    fill(#000000);
  }
  else {
    for(int i=0; i<corona.length; i++) {  
     corona[i].velocidad();
     corona[i].colision();
     corona[i].display(); 
     corona[i].destruir(); 
     corona[i].puntaje(); 
     corona[i].terminado(); 
    }
  }
}
