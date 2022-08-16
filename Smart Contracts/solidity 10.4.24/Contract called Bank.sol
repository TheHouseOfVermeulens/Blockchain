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

// MAPPINGS
pragma solidity ^0.4.24;

contract Simple Token {
   address owner; 
   mapping (address => uint256) public accounts;

   constructor(uint256 initialSupply) public {
       owner = msg.sender; accounts[owner] = initialSupply;
   }

   function transfer(address to, uint256 value) public {
       require(accounts[msg.sender] >= value); 
       require(accounts[to] + value >= accounts[to]);
       accounts[msg.sender] -= value; 
       accounts[to] += value;
   }
}
// Here we have defined mapping accounts with key address and value uint256. 
// In the constructor, we provide the initial supply of tokens and add them to the creators account.
