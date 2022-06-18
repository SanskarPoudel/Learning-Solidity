// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract SimpleStorage{
    //Variables
    uint256 public favouriteNumber;
    int number = 123;
    bool hasFavouriteNumber = true;
    string favouriteText = "Hello World";
    address myAddress = 0x1238135cEE253197E464914fb48e3A4fa472e927;
    bytes32 favouriteBytes = "cat";
  //Function
    function store(uint256 _favouriteNumber) public{
       favouriteNumber = _favouriteNumber;
    }
    function retrieve() public view returns(uint256){
        return favouriteNumber;
    }
    

     //Structure
    struct people{
        uint256 favouriteRollNo;
        string name;
    }

    people public person = people({favouriteRollNo:22, name:"Sanskar"});

    //Array
    people[] public peopleArr ;
    
    function addPerson(string memory _name, uint256 _favouriteRollNo) public{
        people  memory newPerson = people({favouriteRollNo: _favouriteRollNo , name:_name});
        peopleArr.push(newPerson) ;
        nametoFavouriteNumber[_name] = _favouriteRollNo;

    }
    //MAPPING
    mapping(string=> uint256) public nametoFavouriteNumber;
}