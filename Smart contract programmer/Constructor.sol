// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Constructor {
    address public owner;
    uint public k;

    constructor(uint _k) {
        owner = msg.sender;
        k = _k;
    }
}
