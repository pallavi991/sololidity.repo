// SPDX-License-Identifier: GPL-3.0

pragma solidity  ^0.6.0;

contract DynamicArray{
    
    // Declaring a state variable
    int[] private arr;
    
    // Function to add data in dynamic array 
    function addData(int _num) public  returns(int[] memory){
        arr.push(_num);

        
    }
    // Function  to get data of dynamic array 
    function getdata() public view returns(int[] memory){
        return arr;
        
    }
    // Function to return length of dynamic array 
    function getLenght() public view returns(uint){
        return arr.length;
        
    }
    
    // Function to return sum of elementsfof dynamic array 
    function getSum() public view returns(int){
        uint i;
        int sum = 0;
        for (i=0; i<arr.length;i++)
        sum = sum + arr[i];
        return sum;
        
        }
    // Function to search an element in dynamic an element in dynamic array 
    function search(int _num) public view returns(bool){
        uint i;
       for(i = 0; i < arr.length; i++) {
           if (arr[i] == _num){
               return true;
           }
           if (i>= arr.length)
           return false;
           
            
        }
    }
}
