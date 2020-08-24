class Pipe{
  float top;
  float bottom;
  int pipeW = 40;
  int x;
  
  Pipe(){
    x = wid+pipeW;
    top = random(100, height/2 - 16);
    bottom = random(100, height/2 - 16);
  
  
  }
  
  void update(){
    x-=3;
  
  
  }
  boolean hits(Bird b){
    if((b.pos.x+16>x) && (b.pos.x+16 < x+pipeW)){
       if((b.pos.y < (top+16)) || (b.pos.y>height-bottom-16)){
        return true;
       }
    }
   return false;
  
  
  }
  
 void show(){
   fill(13, 255, 178);
   rect(x,0,pipeW,top);
   rect(x, height-bottom,pipeW,bottom);
 
 }


}
