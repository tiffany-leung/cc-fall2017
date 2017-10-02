//variables
PImage fireball;
PImage fireball2;
PImage gif;
PImage Uranus;
PImage Saturn;
PImage Spacemonster;
PImage Spacemonster2;
//space monster
float x,y; // X & Y coordinates of the monster
float hr,vr; // horizontal and vertical radius of the monster
//spacemonster 2
float x2,y2;
float hr2,vr2;
//bouncing ball 
float ballX = 0;
float ballY = 400;
float h = 100;
float speedY = 2;
float speedX = 2;
color ballcolour = color(205, 252, 166);
color strokecolour = color (213, 127, 249);
//rainbow road mode
int rainbowXoffset [] = {0, 40, 80, 120, 160};
//stars
int [] starX = new int [1000];
int [] starY = new int [1000];
color [] starColor = new color [1000];
//size of the twinkling star
int starSize = 3;
//fireball 
float BallX  = 400;
float BallY = 400;
float SpeedX = 7;
//fireball 2
float BallXi = 600;
float BallYi = 400;
float SpeedXi = 7; 

//background set up
void setup () {
  size(1000, 700); 
  background(174, 236, 252);
  noStroke();
  fill (102, 249, 151);
  rect(0, 500, 1000, 200);
  loop();
  frameRate (50);
  noStroke();
  ellipseMode(CORNER);
  //Spacemonster tickle
  hr = 105;
  vr = 100;
  x = 420;
  y = 300;
  //spacemonster 2 tickle
  hr2 = 100;
  vr2 = 100;
  x2 = 800;
  y2 = 
  //space images
  fireball = loadImage("fireball.png");
  fireball2 = loadImage("fireball2.png");
  gif = loadImage("rainbowstar.gif");
  Uranus = loadImage ("Uranus.png");
  Saturn = loadImage ("Saturn.png");
  Spacemonster = loadImage("Spacemonster 2.png");
  Spacemonster2 = loadImage("Spacemonster.png");
  // create the star locations
  for (int i = 0; i <starX.length; i++) {
    starX[i] =(int)random(width);
    starY[i] = (int)random(height);
    starColor[i] = color((int)random(100, 255));
  }
}

//bouncing ball
void draw() {
  background(174, 236, 252);
  noStroke();
  //green road
  fill (71, 249, 47);
  rect(0, 500, 1000, 200);
  //glowing sun 
  fill(255, 237, 81);
  arc(width/4, 250, 500, 500, PI, 2*PI);
  //Spacemonster1 tickle
  // If the cursor is over the text, change the position
  if (abs(mouseX - x) < hr &&
      abs(mouseY - y) < vr) {
    x += random(-10, 10);
    y += random(-10, 10);
  }
    image(Spacemonster,x,y,200,210); 
  //ball 
  tint(255,255);
  stroke(strokecolour);
  strokeWeight (6); 
  fill(ballcolour);
  ellipse(ballX, ballY, h, h);
  //gravity to the speed
  speedY = speedY + 0.5;
  //speedY = 2 + 0.5
  //add speed to the ball 
  ballY = ballY + speedY;
  ballX = ballX + speedX;
  //ballY = 400 + 2
  if (ballY > height - 200) {
    //ballY > 700 - 200 
    ballY = height - 200;
    //ballY = 700 - 100
    speedY = speedY * -1;
    // speedY = 2 * -1
  } else if (ballY <= 300) {
    //make it bounce off
    speedY = speedY * -1;
  }
  //make ball bounce off the sides
  if (ballX > width - 100) {
    //ballX > 1000 
    ballX = width - 100;
    //ballX = 1000 - 100
    speedX = speedX * -1;
    // speedX = 2 * -1
  } else if (ballX < 0) {
    ballX = ballX + 10;
    //make it bounce off
    speedX = speedX * -1;
  }
  // add mouse interaction
  if ( mousePressed == true) {
    background (0);  
    noStroke();
    //blinking lights background 
    fill(255);
    ellipse(random(width), random(height), 6, 6);
    fill(255);
    ellipse(random(width), random(height), 10, 10);
    // draw the stars
    noStroke();
    //make stars twinkle
    for (int i = 0; i < starX.length; i++) {
      fill(random(50, 255)); 
      if (random(10) < 1) {
        starColor[i] = (int)random(100, 255);
      }
      fill(starColor[i]);

      ellipse(starX[i], starY[i], starSize, starSize);
    }
    //insert Planets
    image(Uranus, 600,300,500,500);
    image(Saturn, 0, 0,300,300);
    //tickle monster
    if (abs(mouseX - x2) < hr2 &&
      abs(mouseY - y2) < vr2) {
    x2 += random(-10, 10);
    y2 += random(-10, 10);
  }
    image(Spacemonster2,x2,y2,200,200);
    //rainbow road
    noStroke();
    fill(239, 95, 105);
    rect(0, 500+rainbowXoffset [0], 1000, 40);
    fill (252, 208, 131);
    rect(0, 500+rainbowXoffset [1], 1000, 40);
    fill (252, 250, 141);
    rect(0, 500+rainbowXoffset [2], 1000, 40);
    fill (195, 247, 123);
    rect(0, 500+rainbowXoffset [3], 1000, 40);
    fill (144, 249, 242);
    rect(0, 500+rainbowXoffset [4], 1000, 40);
    
    //insert fireball image
    image(fireball, BallX, BallY, 200, 200); 
    // make fireball move 
    frameRate(50);
    BallX = BallX - SpeedX;
    if (BallX < 0) {
      BallX = width;
    }
    
    //insert fireball2 image
    image(fireball2, BallXi, BallYi, 200, 200);
    //make fireball2 move 
    BallXi = BallXi - SpeedXi;
    if (BallXi < 0) {
      BallXi = width;
    }
    //insert tunnel Image 
    noStroke();
    fill(72, 41, 229);
    rect(0, 400, 100, 200);
    rect(100, 380, 70, 230);
    rect (950,380,70,230);
    //star cursor
    image(gif, mouseX, mouseY, 50, 50);
   
  }
}

//change ball colour
void keyPressed () {
  if (key == CODED) {
    if (keyCode == UP) {
      ballcolour = color (252, 133, 139);
      strokecolour = color (196, 247, 108);
    }
  } else if (keyCode == DOWN) {
    ballcolour = color(132, 177, 249) ; 
    strokecolour = color (252, 196, 83);
  }
  if (key == CODED) {
    if (keyCode == LEFT) {
      ballcolour = color (205, 252, 166);
      strokecolour = color (213, 127, 249);
    } else if (keyCode == RIGHT) {
      ballcolour = color (247, 247, 163); 
      strokecolour = color (157, 136, 252);
    }
  }
}