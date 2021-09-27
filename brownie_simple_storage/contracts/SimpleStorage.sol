//SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract SimpleStorage {
    
    uint256 favoriteNumber;
    
    struct People {
        string name;
        uint256 favoriteNumber;
    }
    
    People[] public peoples;
    mapping(string => uint256) nameToFavoriteNumber;
    
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }
    
    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }
    
    function addPeople(string memory _name, uint256 _favoriteNumber) public {
        peoples.push(People(_name, _favoriteNumber));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}