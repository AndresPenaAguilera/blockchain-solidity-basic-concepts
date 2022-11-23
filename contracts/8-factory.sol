//SPDX-License-Identifier: MT

pragma solidity ^0.8.4;

contract main {

    //
    mapping(address => address) public personal_contract;

    function Factory() public{
        address addr_personal_contract = address( new secudary( msg.sender, address(this) ) );
        personal_contract[msg.sender] = addr_personal_contract;
    }

}

contract secudary {
    
    Owner public owner; 
    struct Owner{
        address _owner;
        address _smartContractMain;
    }
    
    constructor(address _account, address _accountSmartContract){
        owner._owner = _account;
        owner._smartContractMain = _accountSmartContract;
    }

}