// SPDX-License-Identifier: GPL-3.0

pragma solidity  ^0.6.0;

// A contract where ownership can be transferred
contract TransferOwnership{
    
     event ownershipTransferred(address indexed previousOwner, address indexed newOwner);
     
    // Declaring a state varible
    address  public owner;
    
     // Declaring mapping from address to uint
    mapping(address => uint) amount;
    
    // Defining a constructor 
    constructor() public {
        owner = msg.sender;
        
    }
    
    // Defining a modifier
    modifier onlyOwner(){
        require(owner == msg.sender);
        _;
    }
    
    // Defining a function to transfer ownership
    function transferOwnership(address _newOwner) public onlyOwner{
        require (_newOwner != address(0));
         emit ownershipTransferred(owner, _newOwner);
        owner = _newOwner;
    }
}
