ArrayList<Snowflake> mySnowflakes;


void setup() {
  size(800,800);
  rectMode(CENTER);
  noStroke();
  
  
  //instantiate (make) or make copy of thr Snowflake class
  mySnowflakes = new ArrayList<Snowflake>();

  int i = 0;
  while (i < 1000) {
    mySnowflakes.add(new Snowflake() );
    i = i + 1;
  }
}


void draw() {
  background(0);
  
  int i = 0;
  while (i < 1000) {
    //act and show the snowflakes
    Snowflake s = mySnowflakes.get(i);
    s.act();
    s.show();
    i = i + 1;
    
  }
}
