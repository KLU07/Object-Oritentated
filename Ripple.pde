class Ripple {    //class name is ALWAYS CAPITALIZED
  
  //INSTANCE VARIABLES
  float x;
  float y;
  float size;
  float speed;
  float opacity;

  //CONSTRUCTOR VARIABLES, special function to initialize instant variables
  Ripple() {
    x = random(0,width); 
    y = random(0,height);
    size = random(0,200);
    speed = 2;
    opacity = 0;
  }
  
  //BEHAVIOUR FUNCTION
  void act() {
    size = size + speed;
    if (size > 200) {
      x = random(0,width);
      y = random(0,height);
      size = 0;
    }
  }
  
  
  void show() {
    opacity = map(size,0,200,255,0);
    stroke(255,opacity);
    ellipse(x,y,size,size/2);    //size/2 will squish the height
  }
  
}
