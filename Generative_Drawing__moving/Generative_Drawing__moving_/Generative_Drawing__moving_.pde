float startx1 = 175;
float startx2 = 350;
float startx3 = 525;
float y = 350;
float starty1 = 175;
float starty2 = 350;
float starty3 = 525;
float x = 350;

//Set up canvas
void setup(){
  size(700,700);
  background(88, 244, 163);
  stroke(255);
  loop();
  y=height*0.5;
  x=width*0.5;
}
//Moving Objects
void draw(){
  background(88, 244, 163);
//draw Vertical Object 1
  fill(194, 177, 252);
  ellipse(startx1,y,100,100);
  y=y-2.5;
  if(y<0){
  y=height;
  }
//draw Vertical Object 2
  fill(252, 200, 177);
  ellipse(startx2,y,100,100);
  y=y-2.5;
  if(y<0){
    y=height;
  }
//Draw Vertical Object 3
  fill(252, 234, 177);
  ellipse(startx3,y,100,100);
  y=y-2.5;
  if(y<0){
  y=height;
  }
// Draw Horizontal Object 1
  fill(150, 202, 247);
  ellipse(x,starty1,100,100);
  x=x-2.5;
  if(x<0){
  x=width;
  }
//Draw Horizontal Object 2
  fill(252, 207, 201);
  ellipse(x,starty2,100,100);
  x=x-2.5;
  if(x<0){
   x=width;
  }
//Draw Horizontal Object 3
  fill(239, 249, 179);
  ellipse(x,starty3,100,100);
  x=x-2.5;
  if(x<0){
  x=width;
  }
//Draw Vertical Object 1i
  fill (255,180);
  ellipse(startx1+87,y-100,100,100);
  y=y-1;
  if(y<0){
  y=height;
  } 
//Draw Vertical Object 2i
  fill (255,180);
  ellipse(startx2+87,y-100,100,100);
  y=y-1;
  if(y<0){
  y=height;
  } 
//Draw Vertical Object 3i
  fill (255,180);
  ellipse(startx2,y-200,100,100);
  y=y-1;
  if(y<0){
  y=height;
  } 
// Draw Horizontal Object 1i
  fill(255,120);
  ellipse(x-100,starty1+87,100,100);
  x=x-1;
  if(x<0){
  x=width;
  }
//Draw Horizontal Object 2i
noStroke();
  fill(255,120);
  ellipse(x-100,starty2+87,100,100);
  x=x-1;
  if(x<0){
   x=width;
  }
//Draw Horizontal Object 3i
  fill(255,120);
  ellipse(x-200,starty2,100,100);
  x=x-1;
  if(x<0){
  x=width;
  }
}