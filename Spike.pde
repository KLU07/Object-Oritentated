class Spike {

   //INSTANCE
    float x;
    float y;
    float size;
    float colour;
    
    
   //CONSTRUCTOR
     Spike() {
       x = random(0,width);
       y = random(0,height);
       size = random(0,200);
       colour = random(1,255);  //constructor variables only happen once, so each
                                // spike is one solid colour
     }
   
   
   //BEHAVIOUR
   void act() {
      if (size > 0) {
        size = size - 2;  //to get smaller and smaller circles
        y = y - 3;
        colour = colour;
      }
    }
    
    void show() {
      stroke(0);
      colour = random(1,255);  //show happens multiple times, so this 
                               //results in coloured layers
      fill(colour,0,0);
      ellipse(x,y,size,size);
    
    }
    
}
