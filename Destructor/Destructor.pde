// Proyecto Juego Destructor
// Programacion de computadores 1
// Autores:
// Jose Eugenio Vargas Vargas codigo 2192137
// Andres David Saavedra Rincon 2162891
import processing.sound.*;
virus[] corona = new virus[50];//total de virus 
molecula[] oxigeno = new molecula[5];//total de moleculas
SoundFile file;
PImage inicio;//imagenes
PImage fondo;
PImage virrus;
PImage jabon;
PImage oxigenoo;
PImage instruccion;
PImage creditos;
boolean comienzo = true;
int puntaje = 0;


void setup(){
  size(600,700);//tamaño de pantalla
  inicio = loadImage("inicio.jpg");
  fondo = loadImage("fondo.jpg");
  virrus = loadImage("virus.png"); 
  jabon = loadImage("jabon.png");
  oxigenoo = loadImage("oxigeno.png");
  instruccion = loadImage("instruccion.png");
  creditos = loadImage("creditos.png");
  file = new SoundFile(this,"final.mp3");
   file.play();
  file.amp(1);
    for(int i=0; i<corona.length; i++) {
    corona[i] = new virus(random(300,500),random(300,500),50);  
  }
  for(int i=0; i<oxigeno.length; i++) {
    oxigeno[i] = new molecula(random(300,500),random(300,500),50);  
  }
}
void draw(){
  background(fondo);//fondo juego
 
  if (keyPressed) {//para salir de la pantalla de inicio
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
    for(int i=0; i<oxigeno.length; i++) { // llamados oxigeno
     oxigeno[i].ovelocidad();
     oxigeno[i].ocolision();
     oxigeno[i].odisplay(); 
     oxigeno[i].odestruir(); 
    }
    
    for(int i=0; i<corona.length; i++) {  // llamados virus
     corona[i].velocidad();
     corona[i].colision();
     corona[i].display(); 
     corona[i].destruir(); 
     corona[i].puntaje(); 
     corona[i].terminado();
    }
   }
   if(keyPressed){
    if (key == 'k' || key == 'K') {
    image(instruccion, 0, 0);
    }
  }
  if(keyPressed){
    if (key == 'c' || key == 'C') {
    image(creditos, 0, 0);
    }
  }
 }
 
