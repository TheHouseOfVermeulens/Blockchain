pragma solidity ^0.5.0;

contract Marketplace {
    string public name;

    constructor() public {
        name = " ForAll Marketplace";
    }
}

// compile the smart contract to make sure that everything worked:
$ truffle compile

// deploy the mart contract to our Ganache personal blockhain. To do this, create a new migration file like this:

$ touch migrations/2_deploy_contracts.js

// Migration
const Marketplace = artifacts.require("Marketplace");

module.exports = function(deployer) {
  deployer.deploy(Marketplace);
};
// Now migrate run the migrations:
$ truffle migrate
// launch the Truffle console from the command line like this:
$ truffle console

// deploy the mart contract to Ganache personal blockhain. To do this, create a new migration file:

$ touch migrations/2_deploy_contracts.js

// 
const Marketplace = artifacts.require("Marketplace");

module.exports = function(deployer) {
  deployer.deploy(Marketplace);
};

//Now migrate run the migrations like this:
$ truffle migrate

// To check our smart contract from the Truffle console. You can launch the Truffle console from the command lines:
$ truffle console

// get a deployed copy of the smart contract inside the console with JavaScript:

marketplace = await Marketplace.deployed()

// obtain the value of the smart contract by typing the variable name again like this:

marketplace

// obtain the address of the smart contract on the blockchain like this:

marketplace.address

//Next, let's read the name:

name = await marketplace.name()

name
