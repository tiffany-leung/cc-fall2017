// determine the size of the canvas
size(500,500);

// determine the colour of the canvas 
background(167,245,200);

//change colour of the line 
// colour of the line comes first before setting the stroke
// greyscale stroke --> stroke(a);
stroke(255,255,0,255);
// draw a line on the canvas
line(10,60,300,60);

//stroke of the rectangle
stroke(167,50,150,255);
// change fill of rectangle 
fill (167,30,100,255);
//drawing a rectangle 
// rect(a,b,c,d)
// a = pixels from the left
// b = pixels from the top 
// c = width of rectangle 
// d = height of rectangle 
rect(100,100,150,250);

//insert circle 
// colour of circle
fill(255,200,0);
//stroke of circle
stroke(255,200,0);
ellipse(200,300,250,250);

//inserting circle in the middle of the canvas
fill(130,100,250);
ellipse(width/2,height/2,50,50);

// insert triangle
// no stroke on triangle
noStroke();
fill(50,230,255);
triangle(30,105,400,20,86,150);

// How to insert image into canvas
// img=loadImage("nameofimage.jpg)