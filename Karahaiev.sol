// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/math/SafeMath.sol";

contract Karahaiev is ERC20 {
    constructor() ERC20("Karahaiev", "KAPPACOIN") {
        _mint(msg.sender, 10000 * 10 ** decimals());
    }

    receive() external payable {
        _mint(msg.sender, SafeMath.mul(msg.value, 10));
    }
}
