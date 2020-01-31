ArrayList<Spike> mySpikes;

void setup() {
  size(800,800);
  noFill();
  background(255);
  
  
  mySpikes = new ArrayList<Spike>();
  
  
  int i = 0;
  while (i < 100) {
    mySpikes.add(new Spike() );
    i = i + 1;
  }
}


void draw() {
  int i = 0;
  while (i < 100) {
    Spike s = mySpikes.get(i);
    s.act();
    s.show();
    i = i + 1;
  }

}
