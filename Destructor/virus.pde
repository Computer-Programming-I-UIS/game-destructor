class virus{
  float x;
  float y;
  float d;
  int z;
  int c;
  float xvel;
  float yvel;// variables para virus
  
  virus(float posX, float posY, float diametro){
    x = posX;
    y = posY;
    d = diametro;
    
    xvel = random(-10);
    yvel = random(-10);//variables de velocidad de movimiento 
  }
  
  void velocidad(){// velocidad de movimiento
      x += xvel;
      y += yvel; 
    }
  void colision() {
      
      if ((x<0) || (x>width-d)){//rebotes en el eje x
        xvel = -xvel;
      } 
       
      if((y<100) || (y>height-d)) {//rebotes en el eje y
        yvel = -yvel; 
      }
       
    }
    
    void display() { // imagen del virus
    image(virrus, x, y);
    }
    
    void destruir() { //condicionales para sacar de la pantalla los virus
    if (mousePressed) {
      cursor(jabon, z, c);
      float distancia = dist(mouseX, mouseY, x, y);
      if (distancia<d) {
          xvel = 0;
          yvel = 0;
          x = -1600;
          puntaje++;
        }
      } 
    }

      void puntaje() { //cantidad de virus eliminados
    fill(#FFFFFF);
    textSize(30);
    text("Puntaje: "+puntaje,20,80);  
  }
   void terminado() { // devuelve a la pantalla de inicio cuando el puntaje es = 50
    
     if (puntaje ==50 ){
         comienzo = true;
         puntaje = 0;
         for(int i=0; i<corona.length; i++) {
         corona[i] = new virus(random(300),random(300),50);  
         }
     }
   }
}
