// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract SimpleStorage {
    uint256 favorateNumber; 
    mapping(string => uint256) public nameToFavorateNumber;

    struct People {
        uint256 favorateNumber;
        string name;
    }
    People[] public people;

    function store(uint256 _favorateNumber) public virtual {
        favorateNumber = _favorateNumber;
        favorateNumber = favorateNumber+1;
    }

    function retrive() public view returns(uint256){
        return favorateNumber;
}

    function addPeople(string memory _name, uint256 _favorateNumber) public{
      people.push(People(_favorateNumber,_name ));
      nameToFavorateNumber[_name] = _favorateNumber;
    }
}
