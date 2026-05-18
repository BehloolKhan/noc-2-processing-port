Mover car;
float G = (float) 0.5;

void setup() {
    size(640, 360);
    car = new Mover(new PVector(0, height/2), 0.5);
}

void draw() {
    background(255);
    car.update();
    car.draw();
}

void keyPressed() {
    float car_mass = (float) car.getMass();
    if (key == CODED) {
        if (keyCode == RIGHT) {
            car.applyForce(new PVector(G*car_mass, 0.0));
        }
        else if (keyCode == LEFT) {
            car.applyForce(new PVector(-G*car_mass, 0.0));
        }
    }
    
}