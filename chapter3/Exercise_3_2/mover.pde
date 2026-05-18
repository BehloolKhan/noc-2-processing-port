class Mover {

    PVector location;
    PVector acceleration;
    PVector velocity;
    double mass;

    float angle;
    float aAcceleration;
    float aVelocity;

    public Mover(PVector location_, double mass_) {
        this.location = location_;
        this.acceleration = new PVector (0, 0);
        this.velocity = new PVector(0, 0);
        this.mass = mass_;
    }

    public void applyForce(PVector force) {
        PVector copyForce = PVector.mult(force, 1);
        copyForce.div((float) mass); //resultant acceleration
        acceleration.add(copyForce);
    }

    public void update() {
        velocity.add(acceleration);
        location.add(velocity);

        aAcceleration = acceleration.y/10.0;
        aVelocity += aAcceleration;
        aVelocity = constrain(aVelocity,-0.1,0.1);

        acceleration.mult(0);

        angle += aVelocity;
    }

    public void draw() {
        fill(175);

        pushMatrix();

        translate(location.x, location.y);
        rectMode(CENTER);
        rotate(angle);
        rect(0, 0, 20, 20);

        popMatrix();
    }

    public double getMass() {
        return mass;
    }

}