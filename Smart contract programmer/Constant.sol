// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Constant {
    // 21420 gas
    address public constant MY_ADDRESS = 0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc;
    uint public constant MY_NUMBER = 123;
}

contract Var {

    // 23553 gas
    address public MY_ADDRESS = 0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc;
}