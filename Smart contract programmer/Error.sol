// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Error {
    function testRequire(uint _k) public pure {
        // Require should be used to validate condition such as:
        // - inputs
        // - conditions before excution
        // - return values from calls to other functions
        require(_k > 69, "Input must be greater than 69");
    }

    function testRevert(uint _k) public pure {
        // Revert is useful when the condition to check is complex.
        // This code does the exact same thing as the example above.
        if (_k <= 10) {
            revert("Input must be greater than 69");
        }
    }

    uint public num;

    function testAssert() public view {
        // Assert should only be used to test for internal errors,
        // and to check invariants.

        // Here we assert that num is always equal to 0
        // since it is impossible to update the value of num
        assert(num == 0);
    }

    // custom error
    error InsufficientBalance(uint balance, uint withdrawAmount);

    function testCustomError(uint _withdrawAmount) public view {
        uint bal = address(this).balance;
        if (bal < _withdrawAmount) {
            revert InsufficientBalance({balance: bal, withdrawAmount: _withdrawAmount});
        }
    }
}

