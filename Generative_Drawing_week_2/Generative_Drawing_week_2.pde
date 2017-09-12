//set colour and size of canvas
size(700,700);
background (120,230,50);
//change fill of the square
fill(255,200);
stroke(255,255);
//draw square in the middle
rect(175,175,350,350);
// fill of first circle
fill (90,255,230);
stroke(0,0);
//draw first circle
ellipse(262.5,262.5,175,175);
//fill and stroke of second circle 
fill(180,0,255);
stroke(0,0);
//draw second circle 
ellipse(437.5,262.5,175,175);
//insert 4th circle here
//fill and stroke of 4th circle 
fill(230,255,45);
stroke(0,0);
//draw fourth circle 
ellipse(437.5,437.5,250,250);
//fill and stroke of third circle 
fill(255,0,130);
stroke(0,0);
//draw third circle 
ellipse(350,350,175,175);
//fill and stroke of 5th circle
fill(255,195,43);
stroke(0,0);
//draw fifth circle 
ellipse(262.5,420,150,150);
//draw triangle
fill(255,230);
stroke(0,0);
triangle(325,375,375,375,350,332);
//draw line across the canvas
stroke(255,255);
line(0,700,700,0);
//draw 2nd line across the canvas 
stroke(255,255);
line(0,700,233,0);
//draw 3rd line across the canvas
stroke(255,255);
line(0,700,467,0);
//draw 4th line across the canvas 
stroke(255,255);
line(0,700,700,467);
//draw 5th line across the canvas
stroke(255,255);
line(0,700,700,233);