
class Bird {
 PVector velocity;
PVector acc;
PVector pos;

    Bird() {
       pos = new PVector(50, height/2);
       velocity = new PVector(0,0);
       acc = new PVector();
    }
    void show() {
        fill(255, 255, 0);
        ellipse(pos.x, pos.y, 16*2, 16*2);
        /*if(pos.y ==600){
          pos.y = 50;
          pos.x = height/2;
        }*/
        
    }
    
    void applyforce(PVector force){
      acc.add(force);
    
    
    
    }
    void update(){
      applyforce(gravity);
      pos.add(velocity);
      velocity.add(acc);
      velocity.limit(4);
      acc.mult(0);
      
      if(pos.y>height-16){
        pos.y = height-16;
        velocity.mult(0);
      }
     
    }
}
