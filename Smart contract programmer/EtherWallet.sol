/* An example of a basic wallet.

    Anyone can send ETH.
    Only the owner can withdraw. */ 

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract EtherWallet {
    // Declare a variable that stores the owner of this contract
    address payable public owner;

    // Initialize the state variable owner inside the constructor
    constructor() {
        owner = payable(msg.sender);
    }

    // To enable this contract to be able to receive Ether, 
    // Declare a function receive()
    receive() external payable {

    }

    // Declare a function that can send ether out of this contract
    function widthdraw(uint _amount) external {
        // Do not want anyone to be able to call this function except the owner
        require(msg.sender == owner, "caller is not owner!");
        // Transfer ether from this contract to the owner
        payable(msg.sender).transfer(_amount);
    }

    // Declare a function that return the amount of ether in this contract
    function getBalance() external view returns (uint) {
        return address(this).balance;
    }
}
