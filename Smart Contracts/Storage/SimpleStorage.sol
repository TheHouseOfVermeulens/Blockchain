pragma solidity ^0.5.0;

contract SimpleStorage { mapping(address => uint) public storedData; mapping(uint => bool) public number Istaken; uint public rangeMin; uint public rangeMax; uint public ticketcost;

  address public owner;
constructor(
uint _ticketcost, uint _rangemin,
uint _rangeMax ) public {
ticketCost = _ticketcost;
rangeMin = _rangeMin; rangeMax = rangeMax;

owner = msg.sender;
function set(uint x) public payable { require
storedData[msg.sender] != 0 || msg.value >= ticketcost

require( ! number Istaken[x]); require(x > rangeMin && x < rangeMax);

if (number isTaken[storedData[msg. sender]]) {
number Istaken[storedData[msg.sender]] = false;
if (numberIsTaken[storedData[msg.sender]]) {|

storedData[msg.sender] = x; number Istaken[x] = true;

function withdrawal() public {
require(msg.sender == owner); msg.sender.transfer (address(this).balance);
msg.sender.transfer (address(this).balance);
}
