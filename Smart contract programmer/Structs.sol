// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Structs {
    // Define a struct
    struct Car {
        string model;
        uint year;
        address owner;
    }

    // Use in state variables
    Car public car;
    Car[] public cars;
    mapping(address => Car[]) public carsByOwner;

    function example() external {
        // Initialize
        Car memory toyota = Car("Toyota", 1990, msg.sender);
        Car memory lambo = Car({year: 1980, model: "Lamborghini", owner: msg.sender});
        Car memory tesla;
        tesla.model = "Tesla";
        tesla.year = 2010;
        tesla.owner = msg.sender;

        cars.push(toyota);
        cars.push(lambo);
        cars.push(tesla);

        cars.push(Car("Ferrari", 2020, msg.sender));

        // Get
        Car memory _car = cars[0];
        _car.model;
        _car.year;
        _car.owner;

        // Update
        Car storage _car1 = cars[1];
        _car1.year = 1999;
        // Delete
        delete _car.owner;

        delete cars[2];
    }
}