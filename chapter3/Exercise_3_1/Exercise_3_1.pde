PVector ballOne;
PVector ballTwo;


void setup() {

    size(640, 360);
    ballOne = new PVector(0, -50);
    ballTwo = new PVector(0, 50);

}

void draw() {
    background(255);
    fill(175);
    pushMatrix();
    translate(width/2, height/2);
    circle(ballOne.x, ballOne.y, 20);
    circle(ballTwo.x, ballTwo.y, 20);
    line(ballOne.x, ballOne.y, ballTwo.x, ballTwo.y);
    popMatrix();
}