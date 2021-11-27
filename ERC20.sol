// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.6.0;
contract Math{
    function safeAdd(uint a, uint b) public pure returns(uint c) {
        c = a + b;
        require(c >= a && c >= b, "addition overflow");
     }
    function safeSub(uint a, uint b) public pure returns(uint c){
        require(a >= b, "Subraction overflow");
        return c = a - b;
    }
}


contract ERC20 is  Math {
     string public symbol;
     string public name;
     uint8 public decimals;
     uint public  totalSupply;

     mapping(address => uint) balances;
     mapping(address => mapping(address => uint)) Allowed;

     event Transfer(address indexed from, address indexed to, uint value);
     event Approval(address indexed owner, address indexed spender, uint value);

     constructor() public {
         symbol = "Ch";
         name = "Cherry";
         decimals = 18;
         totalSupply = 10000;
         balances[0x3dE5DA721C379C775688A33Fd82D946c28c4D1E7] = totalSupply;
         emit Transfer(address(0), 0x3dE5DA721C379C775688A33Fd82D946c28c4D1E7, totalSupply);
     }

     function balanceOf(address tokenOwner) public view returns(uint balance){
         return balances[tokenOwner];
     }
     
     function transfer(address to, uint tokens) public returns(bool success){
        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
        balances[to] = safeAdd(balances[to], tokens);
           return true;

     }

     
     function approve(address spender, uint tokens) public returns(bool sucess){
        Allowed[msg.sender][spender] = tokens;
        emit Approval(msg.sender, spender, tokens);
        return true;
     }

     function transferFrom(address from, address to, uint tokens) public returns(bool success){
        balances[from] = safeSub(balances[from], tokens);
        Allowed[from][msg.sender] = safeSub(Allowed[from][msg.sender], tokens);
        balances[to] = safeAdd(balances[to], tokens);
        emit Transfer(from, to, tokens);
        return true;
     }
     receive()  external payable {
         revert();
     }
     
     
}
