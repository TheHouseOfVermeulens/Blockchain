pragma solidity 10.4.24; 

contract OverflowAndUnderflow { 
   function overflow public pure returns (uint256) {
       uint 256 max = 2**256-1; return max +1;
   }

   function underflow() public pure returns(uint 256){
       uint256 min = 0; return min-1;
   }
}

// Inside we specify a function called overflow. 
// The function is a public pure function and return a uint256.
// This is one of the most important things to remember about integers in solidity 
// because that can cause a lot of trouble. And after all we are working with money 
// and we need to be sure that whenever we do some mathematical operations we will not 
// overflow or underflow our variable.
