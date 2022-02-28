// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract LocalVariables {
    uint public i;
    bool public k;
    address public myAddress;

    function foo() external {
        uint x = 123;
        bool f = false;

        i = 123;
        k = true;
        myAddress = address(1);
    }
}