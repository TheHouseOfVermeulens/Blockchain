// Create project by cloning the starter kit like this
//$ git clone https://github.com/dappuniversity/starter_kit marketplace
$ cd marketplace

// You can go ahead and install your dependencies like this:
$ npm install

// Now let's look at the truffle-config.js file:

require('babel-register');
require('babel-polyfill');

module.exports = {
  networks: {
    development: {
      host: "127.0.0.1",
      port: 7545,
      network_id: "*" // Match any network id
    },
  },
  contracts_directory: './src/contracts/',
  contracts_build_directory: './src/abis/',
  compilers: {
    solc: {
      optimizer: {
        enabled: true,
        runs: 200
      }
    }
  }
}
// creating a new file in the contracts directory:

$ touch src/contracts/Marketplace.sol

