class virus{
  float x;
  float y;
  float d;
  float xvel;
  float yvel;
  
  virus(float posX, float posY, float diametro){
    x = posX;
    y = posY;
    d = diametro;
    
    xvel = random(-5,5);
    yvel = random(-5,5);//velocidad de movimiento 
  }
  
  void velocidad(){
      x += xvel;
      y += yvel; 
    }
  void colision() {
      
      if ((x<0) || (x>width-d)){
        xvel = -xvel;
      } 
       
      if((y<0) || (y>height-d)) {
        yvel = -yvel; 
      }
       
    }
    
    void display() { 
    image(virrus, x, y);
    }
    
    void destruir() { 
     if (mousePressed) { 
      float distancia = dist(mouseX, mouseY, x, y);
      if (distancia<d) {
          xvel = 0;
          yvel = 0;
          x = -1600;
          puntaje++;
          maxpuntaje = max(puntaje, maxpuntaje);
           }
         } 
      }
      
      void puntaje() { 
    fill(#000000);
    text("Puntaje: "+puntaje,10,20);  
  }
  
   void terminado() { 
   int passedTime = millis() - savedTime;
   
     if (passedTime > totalTime){
         comienzo = true;
         savedTime = millis();
         puntaje = 0;
         for(int i=0; i<corona.length; i++) {
         corona[i] = new virus(random(width),random(height),100);  
         }
     }
   }
}