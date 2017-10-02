//creating an array
float ellipseXoffset[] = {0, 10, 20,-10,-20};
float[] ellipseYoffset = new float[25];

void setup () {
  size (500,500);
  
  for(int a = 0; a <25; a++) {
    ellipseYoffset[a] = 10 * a;
    //ellipseYoffset[a]= random(-200,200);
    print(ellipseYoffset[a] + " " );
  }
}
void draw () {
  background (0);
  //fill (255);
  //fill (mouseX*255/width);
  //ellipse(mouseX+ellipseXoffset[0],mouseY,10,10);
  //ellipse(mouseX+ellipseXoffset[1],mouseY,10,10);
  //ellipse(mouseX+ellipseXoffset[2],mouseY,10,10);
  //ellipse(mouseX+ellipseXoffset[3],mouseY,10,10);
  //ellipse(mouseX+ellipseXoffset[4],mouseY,10,10);
  
  for (int i = 0; i<5;i+=1){
  ellipse(mouseX+ellipseXoffset[i],mouseY,10,10);
  }
  for (int address = 0; address < 25; address++) {
  ellipse(mouseX, mouseY+ellipseYoffset[address], 10, 10);}
}

//interaction with the keyboard
void keyPressed(){
  println(key);
  
  if ( key == 'f' ) {
    fill (255,0,0);
  }
  if (key == 'd' ) {
    fill (0,0,255);
}
}