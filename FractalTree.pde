private double fL = .8; 
private int sL = 10; 
private double bA = .4; 
private double shake = 0.5;
public void setup() 
{   
  size(640,480);
} 
public void draw() 
{   
  background(25);   
  stroke(200);   
  line(320,480,320,380);
  bA=mouseY/(480/.5);   
  branch(320,380,100,3*Math.PI/2); 
} 
public void branch(int x,int y, double branchLength, double angle){ 
  double angle1, angle2;
  angle1=angle+bA-(mouseX-320)/(320/.3);
  angle2=angle-bA-(mouseX-320)/(320/.3);
  branchLength*=fL;
  int endX1 = (int)(branchLength*Math.cos(angle1) + x + Math.random()*shake-shake/2);
  int endY1 = (int)(branchLength*Math.sin(angle1) + y + Math.random()*shake-shake/2);
  int endX2 = (int)(branchLength*Math.cos(angle2) + x + Math.random()*shake-shake/2);
  int endY2 = (int)(branchLength*Math.sin(angle2) + y + Math.random()*shake-shake/2);
  strokeWeight(2);
  line(x,y,endX1,endY1);
  line(x,y,endX2,endY2);
  if(branchLength>sL){
    branch(endX1,endY1,branchLength,angle1);
    branch(endX2,endY2,branchLength,angle2);
  }
} 
