// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract cSankalp {
    string public message = "Welcome to cSankalp Smart Contract!";
    
    function setMessage(string memory newMessage) public {
        message = newMessage;
    }

    function getMessage() public view returns (string memory) {
        return message;
    }
}
