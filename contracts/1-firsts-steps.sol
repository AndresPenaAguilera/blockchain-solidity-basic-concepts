//SPDX-License-Identifier: MT

//version

pragma solidity ^0.8.4;

// Import a Smart Contract from OpenZeppelin
import "@openzeppelin/contracts@4.5.0/token/ERC721/ERC721.sol";

//Declaration of the Smart Contract
contract FirstContract is ERC721{

    //Address of person who displays the contract
    address public owner;

    /* We store in the 'owner' variable the address of the person who displays the contract*/
    constructor(string memory _name, string memory _symbol) ERC721(_name, _symbol){
        owner = msg.sender;
    }
}

