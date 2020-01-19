class Visuals{
  //////////////////////////////////////
 /////   V=- YOUR CODE HERE  -=V  /////
//////////////////////////////////////

  // this is where the sound spectrum data is stored
  public float[] bands;
  // how many values are in it
  public int numBands;
  
  float x1,x2,y1,y2;
  
  void setup(){
    background(0);
    x1=80;
    y1 =80;
  }
  
  void draw(){

    noFill();
    strokeWeight(1);
    pushMatrix();
    for (int i=0;i<width;i+=width/10){
     float r1 = map(bands[8]*width,0,11500,30,80);
     float r2 = map(bands[8]*width, 0,11500, 0.1,0.8 );
     
     if (r1 > 80)
     {
       r1=80;
     }
     
     if (r2 > 2)
     {
       r2=2;
     }
          
     println(bands[8]*width);
     
     x1 += r2;
     //y1+=r1;
     
     float r = map(bands[8]*width,0,11500,0,255);
     float g = map(bands[1]*width,0,11500,0,255);
     float b = map(bands[2]*width,0,11500,0,255);
     stroke(r,g,b,10);
     
     println(bands[1]*width);
     
     ellipse(x1,y1,r1,r1);
     
     if(x1>width-80){
       y1=y1+80;
       x1=80;
     }else if (y1>height-80){
       
       y1=80;
     
     }
     
    
   }
     popMatrix();
  
  }
  
  
  
  
  
  
  
  
  
  
    /////////////////////
   // CLASS CONSTRUCTOR
  // do not delete.
  Visuals(int _numBands){
    numBands = _numBands;
    bands = new float[numBands];
  }
}
