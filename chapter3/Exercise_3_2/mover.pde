class Mover {

    PVector location;
    PVector acceleration;
    PVector velocity;
    double mass;

    public Mover(PVector location_, double mass_) {
        this.location = location_;
        this.acceleration = new PVector (0, 0);
        this.velocity = new PVector(0, 0);
        this.mass = mass_;
    }

    
}