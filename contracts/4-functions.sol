//SPDX-License-Identifier: MT

pragma solidity ^0.8.4;

contract functions {

    // Pure funtions, it is not conected with blockchain
    function getName() public pure returns( string memory ){
        return "Joan";
    }

    //View functions, only access data
    uint256 x = 100;
    function getNumber() public view returns (uint256){
        return x * 2;
    }
}