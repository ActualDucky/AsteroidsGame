class Star{
  private int myX, myY;
  public Star(){
    myX = (int)(Math.random()*400);
    myY = (int)(Math.random()*400);
  }
    public void show(){
      fill (255);
      ellipse (myX, myY, 3, 3);
    }
}
