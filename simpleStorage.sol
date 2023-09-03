// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage {
    uint256 private favoriteNumber;

    // Function to set the favorite number
    function setFavoriteNumber(uint256 newFavoriteNumber) public {
        favoriteNumber = newFavoriteNumber;
    }

    // Function to get the favorite number
    function getFavoriteNumber() public view returns (uint256) {
        return favoriteNumber;
    }
}
