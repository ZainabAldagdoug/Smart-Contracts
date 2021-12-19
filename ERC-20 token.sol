// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol';

contract ZainabToken is ERC20 {
    constructor() ERC20("ZainabToken", "ZAT") {
        _mint(msg.sender, 10000 * 10 ** 18);
    }
}