private double fractionLength = .7; 
private int smallestBranch = 15; 
private double branchAngle = 0.8;  
public void setup() 
{   
  size(650, 500);    
  noLoop();
} 
public void draw() 
{   
  background(0);   
  stroke(142, 255, 255);   
  line(320, 480, 320, 380);   
  drawBranches(320, 380, 100, 3*Math.PI/2);
}
public void drawBranches(int x, int y, double branchLength, double angle) 
{   
  double angle1=angle+branchAngle;
  double angle2=angle-branchAngle;
  int endX1=(int)(branchLength*Math.cos(angle1)+x);
  int endY1=(int)(branchLength*Math.sin(angle1)+y);
  int endX2 = (int)(branchLength*Math.cos(angle2) + x);
  int endY2 = (int)(branchLength*Math.sin(angle2) + y);
  int endX3=  (int)(branchLength*Math.cos(angle) + x);
  int endY3= (int)(branchLength*Math.sin(angle) + y);
  branchLength=branchLength*fractionLength;
  line(x, y, endX1, endY1);
  line (x, y, endX2, endY2);
  line(x,y,endX3,endY3);
  if (branchLength>smallestBranch) {
  drawBranches(endX3,endY3,branchLength,angle);
    drawBranches(endX1, endY1, branchLength, angle1);
   drawBranches(endX2, endY2, branchLength, angle2);
  }
} 

