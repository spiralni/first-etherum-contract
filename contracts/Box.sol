// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "./access-control/Auth.sol";

contract Box {
    uint256 private _value;
    Auth private _auth;

    constructor(Auth auth) {
        _auth = auth;
    }

    event ValueChanged(uint256 value);

    function store(uint256 value) public {
        require(_auth.isAdministrator(msg.sender), "Unauthorized");
        
        _value = value;
        emit ValueChanged(value);
    }

    function retrieve() public view returns (uint256) {
        return _value;
    }
}
