//SPDX-License-Identifier: MT

pragma solidity ^0.8.4;

import "./10-ERC20Standar.sol";

contract customERC20 is ERC20{
    
    constructor() ERC20("Andres","APA"){

    }

    function createTokens() public {
        _mint(msg.sender, 1000);
    }

}