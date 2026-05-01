PVector ballOne;
PVector ballTwo;


void setup() {
    
    size(640, 360);
    ballOne = new PVector(width/2, height/2 - 50);
    ballTwo = new PVector(width/2, height/2 + 50);

}

void draw() {
    background(255);
    circle(ballOne.x, ballTwo.x, 2);
    circle(ballTwo.x, ballTwo.x, 2);
}