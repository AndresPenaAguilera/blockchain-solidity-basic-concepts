//SPDX-License-Identifier: MT

pragma solidity ^0.8.4;

contract Food {

    struct dinnerPlate{
        string name;
        string ingredients;
    }

    dinnerPlate[] public menu;

    function newMenu(string memory _name, string memory _ingredients) internal{
        
        dinnerPlate memory newPlate = dinnerPlate(_name, _ingredients);
        menu.push( newPlate );
    }
}


contract Hamburguer is Food {

    address public owner;

    constructor(){
        owner = msg.sender;
    }

    function doHamburguer(string memory _ingredients, uint _uints) external{
        require( _uints <= 5, "Ups, exceeds the allowed limit");

        newMenu("Hamburguer", _ingredients);
    }


    //Modifier:
    modifier onlyOwner(){
        require(owner == msg.sender, "you don't have permissions");
        _;
    }

    function hashPrivateNumber(uint _number) public view onlyOwner returns (bytes32){
        return keccak256( abi.encodePacked(_number) );
    }
}

