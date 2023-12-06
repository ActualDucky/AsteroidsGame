Spaceship bob = new Spaceship();
Star[] space = new Star[200];
ArrayList <Asteroid> rock = new ArrayList <Asteroid>(); 
public void setup(){
  size (400, 400);
  background(0);
  for (int i = 0; i < space.length; i++){
    space[i] = new Star();
  }
  for (int i = 0; i < 15; i++){
  rock.add(new Asteroid());
  }
}
public void draw() {
  background(0);
  bob.move();
  bob.show();
  for (int i = 0; i < space.length; i++){
    space[i].show();
  }
  for (int i = 0; i < rock.size(); i++){
    rock.get(i).show();
    rock.get(i).move();
    float distance = dist(bob.getX(),bob.getY(), rock.get(i).getAX(), rock.get(i).getAY());
    if (distance < 30){
      rock.remove(i);
    }
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
