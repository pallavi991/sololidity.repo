// SPDX-License-Identifier: GPL-3.0

pragma solidity  ^0.6.0;

contract my_contract{
    
    // Declaring state varibles 
    uint num1;
    uint num2;
    
    // constructor to intialize state varibles
    constructor() public {
        num1 = 20;
        num2 = 30;
        
    }
    
     // Function to take input values from user and display pro and sum
    function setValues(uint _num1, uint _num2) public view returns(uint,uint)  {
         _num1 = 40;
          _num2 =50;
         uint pro =num1*num2;
         uint sum = _num1+_num2;
         return (pro,sum);
        
    }
    
    // Function to return sum of state variables
    function getValue() public view returns(uint){
        uint sum;
        // value of num1 and num2 are taken as num1 =30 and num2 = 20 those defined in state variable
        return sum = num1 + num2;
         
    
    }
    
}
