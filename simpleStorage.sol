// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage {
    uint private favoriteNumber;

    // Function to set the favorite number
    function store(uint256 newFavoriteNumber) public {
        favoriteNumber = newFavoriteNumber;
    }

    // Function to get the favorite number
    function get() public view returns (uint256) {
        return favoriteNumber;
    }
}
