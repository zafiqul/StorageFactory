// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage {
    uint256[] public favoriteNumbers;

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        favoriteNumbers.push(_favoriteNumber);
    }

    function retrieve(uint256 _favoriteNumberIndex) public view returns (uint256) {
        // require(_favoriteNumberIndex < favoriteNumbers.length, "Index out of bounds");
        return favoriteNumbers[_favoriteNumberIndex];
    }
}
