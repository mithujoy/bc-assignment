pragma solidity >=0.4.21;

contract healthCareRecord{
    string name; 
    string email;
    uint mobileNo;
    string doctorName;
    uint doctorId;
    string symptoms;
    string medications;
    int age;
    
    function healthCare( string memory name, string memory email, uint mobileNo, string memory doctorName, uint doctorId, string memory symptoms, string memory medications, int age) public
    {
        name=name;
        email=email;
        mobileNo=mobileNo;
        doctorName=doctorName;
        doctorId=doctorId;
        symptoms=symptoms;
        medications=medications;
        age=age;
    }
    
    function gethealthCareRecord()public view returns(string memory name, string memory, uint, string memory, uint, string memory, string memory, int)
    {
        return(name,email,mobileNo,doctorName,doctorId,symptoms,medications,age);
    }
}