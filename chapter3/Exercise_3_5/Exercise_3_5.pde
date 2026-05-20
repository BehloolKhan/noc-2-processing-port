SpaceShip ship;

void setup() {
    size(640, 360);
    ship = new SpaceShip(new PVector(0, height), 0.5);
}

void draw() {
    background(255);
    ship.update();
    ship.draw();
}

void keyPressed() {
    
    if (key == CODED) {
        if (keyCode == RIGHT) {
            ship.rotateClockwise();
        }
        else if (keyCode == LEFT) {
            ship.rotateAntiClockwise();
        }
    }

    else if ((key == 'Z') || (key == 'z')) {
        PVector velocity = ship.getVelocity();
        velocity.normalize();
        PVector thrust = velocity.mult(1.5);
        ship.applyForce(thrust);
    }
    
}