// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Bank {
    address public owner;
    mapping (address =>uint256) balances;

    constructor() public payable{
        owner = msg.sender;
    }
    
    receive() external payable {
        balances[msg.sender] += msg.value;
    }

    function send(address _to, uint amount) public payable{
        require(amount <= balances[msg.sender]);
        payable(_to).transfer(amount);
        balances[msg.sender] -= amount;
    }

    function Withdraw(uint amount) public{
        require(amount <= balances[msg.sender]);
        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
    }  
    
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}