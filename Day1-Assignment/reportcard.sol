pragma solidity ^0.4.17 ;

contract studentRecord{
    string name;
    uint rollNo;
    uint sub1;
    uint sub2;
    uint sub3;
    uint sub4;
    string result;
    
    function studentRecord(string newName, uint Roll, uint S1, uint S2, uint S3, uint S4, string result1) public
    {
        name=newName;
        rollNo=Roll;
        sub1=S1;
        sub2=S2;
        sub3=S3;
        sub4=S4;
        result=result1;
    }
    
    function getRecord()public view returns(string, uint, uint,uint, uint, uint, string)
    {
        return(name,rollNo,sub1,sub2,sub3,sub4,result);
    }
}