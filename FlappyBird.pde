PImage backImg;
int imageMove = -200;
PVector gravity = new PVector(0, 0.2);
Bird bird;
boolean gamestate = false;
int score = 0;
int wid =400;
int hei = 600;
int highScore =0;
int currentScore = 0;

ArrayList<Pipe> pipes = new ArrayList<Pipe>();
void setup(){
  backImg = loadImage("grasss.png");
  size(400,600);
  textSize(32);
  bird = new Bird();
  
}

void draw(){
  if(gamestate == false){
      imageMode(CORNER);
      image(backImg,imageMove,0);
      image(backImg, imageMove+backImg.width,0);
      imageMove-= 1;
      if(imageMove ==-400){
        imageMove=0;
      };
      textSize(50);
  textAlign(CENTER);
   fill(255,255,255);
  text("Click To Play!",200,300);
  textSize(50);
  if(currentScore!=0){
     textSize(50);
  textAlign(CENTER);
   fill(255,255,255);
  text(currentScore,200,100);
  textAlign(CENTER);
   fill(255,255,255);
  text("HighScore",200,400);
  text(highScore, 200, 450);}
     
      if(mousePressed){
        bird = new Bird();
        gamestate = true;
        pipes = new ArrayList<Pipe>();
      
  }

}else{
      imageMode(CORNER);
      image(backImg,imageMove,0);
      image(backImg, imageMove+backImg.width,0);
      imageMove-= 1;
      if(imageMove ==-400){
        imageMove=0;
      };
      bird.show();
      bird.update();
    
      textSize(50);
  textAlign(CENTER);
   fill(255,255,255);
  text(score,200,100);
  
  if(frameCount%60 == 0){
      pipes.add(new Pipe());
      score++;
  }
  
      if(mousePressed){
        PVector up = new PVector(0, -5);
        bird.applyforce(up);
        
        gamestate = true;
      
      }
      for(int i =pipes.size()-1;i>=0;i--){
        Pipe p = pipes.get(i);
        p.update();
        p.show();
        if(p.hits(bird)){
        gamestate = false;
        if(score>highScore){
            highScore = score;
        }
        currentScore = score;
        score=0;
      }
      textSize(50);
  textAlign(CENTER);
   fill(255,255,255);
  text(score,200,100);
      
      }
     
  }
 
  
  /* textSize(32);
  textAlign(CENTER);
   fill(255,0,0);
  text("Hello world",200,300);
 if(frameCount%15==0){
  fill(0, 255,0);
  text("Hello world",200,300);

}*/
 

}
