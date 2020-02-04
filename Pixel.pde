class Pixel {
  
  //INSTANCE VARIABLES
  float x;
  float y;
  float size;
  color colour;
  
  
  //CONSTRUCTON
  Pixel() {
    x = random(width);
    y = random(height);
    colour = get(int(x),int(y) );
    size = 1;
  }
  
  //BEHAVIOUR FUNCTION
  void act() {
    size = dist(mouseX, mouseY, x,y) /10;
    if (size > 200) {
      size = 200;
    }     
   }
  
  
  void show() {
    fill(colour);
    rect(x, y, size, size); 
  }
} 
