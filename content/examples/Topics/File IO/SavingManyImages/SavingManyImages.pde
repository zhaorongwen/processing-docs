/**
 * Saving Many Images
 *
 * The saveFrame() function allows you to save images from
 * a program while it is running. This example saves the first
 * 50 frames of a program. These images can be imported into
 * animation software or QuickTime and then saved as a movie.
 * 
 * Created 26 May 2007
 */

float x = 33;
float numFrames = 50;

void setup() 
{
  size(200, 200);
  smooth();
  noStroke();
}

void draw() 
{
  background(0);
  x += random(-2, 2);
  ellipse(x, 100, 80, 80);
  if (frameCount <= numFrames) {
    saveFrame("circles-####.tif");
  }
}
