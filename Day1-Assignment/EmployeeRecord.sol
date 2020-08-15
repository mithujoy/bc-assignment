pragma solidity >= 0.4.17 < 0.6.12;

contract EmployeeRecord{
    
    string public empName;
    uint public empId;
    string public companyName;
    string public department;
    string public designation;
    string public onboardDate;
    int public   age;
    string public location;
    
    function EmployeeRecord(string newEmpName, uint newEmpId, string newcCompanyName, string newDepartment, string newDesignation, string newOnboardDate, int newAge, string newLocation ) public {
        empName = newEmpName;
        empId = newEmpId;
        companyName = newcCompanyName;
        department = newDepartment;
        designation = newDesignation;
        onboardDate = newOnboardDate;
        age = newAge;
        location = newLocation;
    }
    
    function getEmployeeDetails() public view returns(string,uint,string,string,string,string, int, string){
        return(empName, empId, companyName, department,  designation, onboardDate, age, location);
    }
}