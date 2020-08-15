pragma solidity >= 0.4.17 < 0.6.12;

contract PassangerRecord{
    
    string public source;
    string public destination;
    uint public trainNo;
    string public date;
    string public passangerName;
    int public   age;
    string public place;
    
    function PassangerRecord(string newSource, string newDestination, uint newtrainNo, string newDate, string newPassangerName, int newAge, string newPlace) public {
        source = newSource;
        destination = newDestination;
        trainNo = newtrainNo;
        date = newDate;
        passangerName = newPassangerName;
        age = newAge;
        place = newPlace;
    }
    
    function getPassangerDetails() public view returns(string, string, uint,string,string, int, string){
        return(source, destination, trainNo, date, passangerName, age, place);
    }
}