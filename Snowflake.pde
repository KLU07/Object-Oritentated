class Snowflake {
  
  //INSTANCE VARIABLES - information needed for individual snowflakes
  float x;
  float y;
  float size;
  float speed;
  
  
  //CONSTRUCTOR(S) - initializing the instance variables. 
  //NO return type (void). Same name as class.
  Snowflake() {
    x = random(0,width);
    y = random(0,height);
    size = random(2,7);
    speed = size;
  
  }
  
  //BEHAVIOUR FUNCTION - actions that this 
  
  void act() {
    //actions that a snowflake can do - fall, teleport back to the top
    if (mousePressed) {
      y = y + 3;
    } else {
      y = y + speed;
    }
    if (y > height) {
      x = random(0,width);
      y = -5;
    }
    
  }
  
  
  void show() {
    //draws the snowflake to the screen
    rect(x,y,size,size);
  }

}
