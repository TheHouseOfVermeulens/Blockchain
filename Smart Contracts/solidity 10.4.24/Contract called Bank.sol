pragma solidity 10.4.24; 

contract Bank {
   mapping (address => uint) public accounts;

   function deposit(uint money) public {
      accounts[msg.sender] += money;
   }
   function withdraw(uint money) public {
      accounts[msg.sender] -= money;
   }
}


// Above is a contract called Bank with a mapping called accounts. 
// We define our mapping with the keyword mapping and in brackets, 
// we put the key type first then an arrow and the value
