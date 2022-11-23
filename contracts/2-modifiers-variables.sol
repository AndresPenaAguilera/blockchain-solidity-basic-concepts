//https://docs.soliditylang.org/en/v0.8.13/types.html
//SPDX-License-Identifier: MT
pragma solidity ^0.8.4;

contract variables_modifiers {

    uint256 a;
    uint8 public b = 3;

    int256 c;
    int8 public d = -32;
    int e = 65;

    string str;
    string public str_public = "it is public";

    bool boolean;
    bool public boolean_true = true;
    bool private boolean_false =false;

    bytes32 first_bytes;
    bytes4 second_bytes;
    bytes1 byte_1;

    bytes32 public hashing = keccak256(abi.encodePacked("Hola","Andres"));
    bytes32 public hashing_sha256 = sha256(abi.encodePacked("Hola","Andres"));
    bytes20 public hashing_ripemd160 = ripemd160(abi.encodePacked("Hola","Andres"));

    address my_address;
    address public my_address_public = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    address public address_sender = msg.sender;

    enum options { ON, OFF }
    options state;
    options constant defaultChoise = options.OFF;

    function turnOn() public{
        state = options.ON;
    }

    function turnOff() public{
        state = options.OFF;
    }

    function displayState() public view returns (options){
        return state;
    }
}

