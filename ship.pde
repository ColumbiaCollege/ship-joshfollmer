//code for pirate ship
//just so you know github deleted my original sketch so I had to write this an hour before it was due, apologies if it sucks
//also i couldnt figure out how to rotate the ship to the direction its moving so it looks really dumb, plz dont laugh :(
//sets variables
float x =500;
float y =500;
PImage img;
//sets size of screen and selects image
void setup() {
  size(1000, 1000);
  img = loadImage("pirate_doodle.png");
}

void draw() {
  //draws background and shi[ every frame
  background(#19ADFA);
  imageMode(CENTER);
  image(img, x, y, 100, 80);

//if the a key is pressed x is subtracted 5
  if (key == 'a') {
    x = x - 5;
  }
  //if d key is pressed x is added 5
  if (key=='d') {
    x = x + 5;
  }
  //if w key is pressed y is subtracted five
  if (key=='w') {
    y = y - 5;
  }
  //if s key is pressed y is added 5
  if (key=='s') {
    y= y + 5;
  }
  //if y is greater than the eight of the screen(which is 1000) y is set to 0(which is the top)
  if (y > height) {
    y= 0;
  }
  //if x is greater than the width(also 1000) its set to 0 (which is the left side)
  if (x > width) {
    x= 0;
  }
  //i had to get creative because y and x are always less than the height and width, so i set the coordinates to be just off screen
  if (x < -60) {
    x=1000;
  }
  if (y < -60) {
    y=1000;
  }
}
