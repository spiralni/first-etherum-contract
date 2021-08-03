// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Auth {
    address private _admin;

    constructor() {
        _admin = msg.sender;
    }

    function isAdministrator(address user) public view returns(bool) {
        return _admin == user;
    }
}