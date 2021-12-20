// SPDX-License-Identifier: MIT

// Define version
pragma solidity >=0.6.0 <0.9.0; //versions from 0.6.0 to 0.9.0

//Define contract
contract SimpleStorage {
    // this will get initialized as 0
    uint256 favoriteNumber;

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People[] public people;
    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    // view, pure
    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    // memory: after execution, delete variable
    // storage: after execution, keep variable
    function addPeople(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
