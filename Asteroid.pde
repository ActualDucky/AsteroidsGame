class Asteroid extends Floater {
  private double RSpeed;
  public Asteroid() {
    RSpeed = (Math.random()*5);
    corners = 6; 
    xCorners = new int[]{-11, 7, 13, 6, -11, -5};
    yCorners = new int[]{-8, -8, 0, 10, 8, 0};
    myXspeed = (Math.random()*10)-5;
    myYspeed = (Math.random()*10)-5;
    myCenterX = (Math.random()*400);
    myCenterY = (Math.random()*400);
    myColor = 128;
    myPointDirection = (Math.random()*360);
  }
  
  public void move(){
    turn(RSpeed);
    super.move();
  }
  public float getAX(){
    return (float) myCenterX;
  }
  public float getAY(){
    return (float) myCenterY;
  }
}
