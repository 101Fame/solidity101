// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Calculator {
    // Function to add two integers and return the result
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        uint256 result = a + b;
        return result;
    }

    // Function to subtract two integers and return the result
    function sub(uint256 a, uint256 b) public pure returns (uint256) {
        require(b <= a, "Result would be negative");
        uint256 result = a - b;
        return result;
    }

    // Function to multiply two integers and return the result
    function mul(uint256 a, uint256 b) public pure returns (uint256) {
        uint256 result = a * b;
        return result;
    }

    // Function to divide two integers and return the result
    function div(uint256 a, uint256 b) public pure returns (uint256) {
        require(b > 0, "Division by zero");
        uint256 result = a / b;
        return result;
    }

    // Function to get the remainder of the division of two integers
    function mod(uint256 a, uint256 b) public pure returns (uint256) {
        require(b > 0, "Division by zero");
        uint256 result = a % b;
        return result;
    }

    // Function to calculate the power of a number
    function pow(uint256 base, uint256 exponent) public pure returns (uint256) {
        uint256 result = base**exponent;
        return result;
    }
}
