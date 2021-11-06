// SPDX-License-Identifier: GPL-3.0

pragma solidity  ^0.6.0;

// Solidity program to deposit eth and get contract balance
contract contractInfo {
   
    //  Defining a function to  deposit eth
     function deposit(uint _amount) payable public{
         require(msg.value == _amount);
     }
    
    // A smart contract can access its own balance as address(this).balance 
    // Given account's address, its current ether balance can be accessed as address.balance
    function getBalance() public view returns(uint){
        return address(this).balance;
    }
}
