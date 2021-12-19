// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract FirstContract {
    string Value;

    constructor() public {
        Value = "Contract Value";

    }
    
    function get() public view returns(string memory) {
        return Value;
    }

    function set(string memory _Value) public{
        Value = _Value;
    } 
}