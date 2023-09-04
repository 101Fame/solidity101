// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

   contract ArraysExample {
       uint[] public dynamicArray = [1, 2, 3, 4, 5]; //FIXME expected to set dynamicArray but not working

    

       function getThirdElement() public view returns (uint) {
           return dynamicArray[2];
       }
   }
