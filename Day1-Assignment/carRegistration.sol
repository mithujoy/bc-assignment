pragma solidity >=0.4.21;

/**
 * Contract to store the mileage of a car 
 */
contract carRegistration {
    
    event Creation(
        address indexed from,
        string indexed vin
    );
    
    struct Car {
        string vin;
        address owner;
        uint kilometers;
    }
    
    mapping (string => Car) cars;
    
    /**
     * Creates a track record of a new car. 
     * Transaction will fail (and burn gas!) if the car already exists.
     */
    function createCar(string vin) public {
        assert(cars[vin].owner == 0x0);
        
        cars[vin].vin = vin;
        cars[vin].owner = msg.sender;
        cars[vin].kilometers = 0;
        emit Creation(msg.sender, vin);
    }
    
    /**
     * Returns the current data of the given car
     */
    function getCar(string vin) public constant returns(address owner) {
        owner = cars[vin].owner;
        
    }
    
    
}