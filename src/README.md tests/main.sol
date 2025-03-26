// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract cSankalp {
    string public name = "cSankalp Hybrid Finance Token";
    uint256 public totalSupply = 1000000;  // Example supply

    mapping(address => uint256) public balances;

    constructor() {
        balances[msg.sender] = totalSupply; // Assign all tokens to contract creator
    }

    function transfer(address recipient, uint256 amount) public returns (bool) {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        balances[recipient] += amount;
        return true;
    }
}
