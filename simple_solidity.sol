// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.2;

contract Changenumber{

    uint number = 0;
    function changenumber(uint _num) public{
        number = number + _num;
    }
    function getnumber() public view returns(uint){
       return number;
    }
    function getNumberMultiplied(uint _num) public view returns(uint ){
      uint MultipliedNUmber =number*_num;
       return MultipliedNUmber;
    }
    function addNumbers(uint _num1, uint _num2) public pure returns(uint){
        uint x = _num1 + _num2;
        return x;
    } 
}
