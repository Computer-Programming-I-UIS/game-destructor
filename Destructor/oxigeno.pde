class molecula{
  float ox;
  float oy;
  float od;
  float oxvel;
  float oyvel;// variables oxigeno
  
  molecula(float oposX, float oposY, float odiametro){
    ox = oposX;
    oy = oposY;
    od = odiametro;
    
    oxvel = random(-25);
    oyvel = random(-25);// variables velocidad de movimiento
  }
  
  void ovelocidad(){//velocidad de movimiento
      ox += oxvel;
      oy += oyvel; 
    }
  void ocolision() {
      
      if ((ox<0) || (ox>width-od)){//rebotes en x
        oxvel = -oxvel;
      } 
       
      if((oy<100) || (oy>height-od)) {// rebotes en y
        oyvel = -oyvel; 
      }
       
    }
    
    void odisplay() { //imagen de oxigeno
    image(oxigenoo, ox, oy);
    }
    
  void odestruir() { // si toca un oxigeno, devuelve a la pantalla de inicio
     if (mousePressed) { 
      float odistancia = dist(mouseX, mouseY, ox, oy);
      if (odistancia<od) {
        comienzo = true;
        for(int i=0; i<oxigeno.length; i++) {
         oxigeno[i] = new molecula(random(300,500),random(300,500),50); 
        
           } 
           for(int i=0; i<corona.length; i++) {
         corona[i] = new virus(random(300,500),random(300,500),50);  
         }
         puntaje=0;
        }  
    }
}
}
