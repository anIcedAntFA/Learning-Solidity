/*Variables are declared as either storage, memory or calldata to explicitly specify the location of the data.

    storage - variable is a state variable (store on blockchain)
    memory - variable is in memory and it exists while a function is being called
    calldata - special data location that contains function arguments, only available for external functions */

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract DataLocations {
    struct MyStruct {
        uint foo;
        string text;
    }

    mapping(address => MyStruct) public myStructs;

    function example() external {
        myStructs[msg.sender] = MyStruct({
            foo: 123,
            text: "bar"
        });

        MyStruct storage myStruct = myStructs[msg.sender];
        myStruct.text = "foo";

        MyStruct memory readOnly = myStructs[msg.sender];
        readOnly.foo = 456;
    }

    // uint[] public arr;
    // mapping(uint => address) map;
    // struct MyStruct {
    //     uint foo;
    // }
    // mapping(uint => MyStruct) myStructs;


    // function _f(
    //     uint[] storage _arr,
    //     mapping(uint => address) storage _map,
    //     MyStruct storage _myStruct
    // ) internal {
    //     // do something with storage variables
    // }
    // function f() public {
    //     // call _f with state variables
    //     _f(arr, map, myStructs[1]);

    //     // get a struct from a mapping
    //     MyStruct storage myStruct = myStructs[1];
    //     // create a struct in memory
    //     MyStruct memory myMemStruct = MyStruct(0);
    // }

    // // You can return memory variables
    // function g(uint[] memory _arr) public returns (uint[] memory) {
    //     // do something with memory array
    // }

    // function h(uint[] calldata _arr) external {
    //     // do something with calldata array
    // }
}