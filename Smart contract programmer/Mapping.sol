/*Maps are created with the syntax mapping(keyType => valueType).

keyType can be value types such as uint, address or bytes.

valueType can be any type including another mapping or an array.

Mappings are not iterable. */

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Mapping {
    // Mapping from address to uint
    mapping(address => uint) public myMap;

    function get(address _addr) public view returns (uint) {
        // Mapping always returns a value
        // If the value was never set, it will return the default value.
        return myMap[_addr];
    }

    function set(address _addr, uint _k) public {
        // Update the value at this address
        myMap[_addr] = _k;
    }

    function remove(address _addr) public {
        // Reset the value to the default value.
        delete myMap[_addr];
    }
}

contract NestedMapping {
    // Nested mapping (mapping from address to another mapping)
    mapping(address => mapping(uint => bool)) public nestedMap;

    function get(address _addr, uint _k) public view returns (bool) {
        // You can get values from a nested mapping
        // even when it is not initialized
        return nestedMap[_addr][_k];
    }

    function set(
        address _addr,
        uint _k,
        bool _boo
    ) public {
        nestedMap[_addr][_k] = _boo;
    }

    function remove(address _addr, uint _k) public {
        delete nestedMap[_addr][_k];
    } 
}