Spaceship bob = new Spaceship();
Star[] space = new Star[200];
public void setup(){
  size (400, 400);
  background(0);
  for (int i = 0; i < space.length; i++){
    space[i] = new Star();
  }
}
public void draw() {
  background(0);
  bob.move();
  bob.show();
  for (int i = 0; i < space.length; i++){
    space[i].show();
  }
}
public void keyPressed() {
  if (keyPressed) {
    if (key == 'w' || key == 'W'){
      bob.accelerate(0.5);
    }
    if (key == 'a' || key == 'A'){
      bob.turn(-10);
    }
    if (key == 's' || key == 'S'){
      bob.accelerate(-0.5);
    }
    if (key == 'd' || key == 'D'){
      bob.turn(10);
    }
    if (key == 'h' || key == 'H'){
      bob.hyperspace();
    }
  }
}
