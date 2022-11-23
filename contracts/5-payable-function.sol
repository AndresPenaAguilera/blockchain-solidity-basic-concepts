//SPDX-License-Identifier: MT

pragma solidity ^0.8.4;

contract ethSend {

    constructor() payable{

    }

    receive() external payable {

    }

    //Events
    event sendStatus( bool );
    event callStatus( bool, bytes);

    // Transfer
    function sendViaTransfer( address payable _to) public payable {
        _to.transfer(1 ether);
    }


    // Send
    function sendViaSend( address payable _to) public payable {
        bool success = _to.send(1 ether);
        emit sendStatus( success );

        require( success == true, "Failet send");
    }


    // Call
    function sendViaCall( address payable _to) public payable {
        (bool success, bytes memory data) =  _to.call{value: 1 ether}("");
        emit callStatus( success, data );
        require( success == true, "Failet send");
    }
}


contract ethReceiver {
    
    event log(uint amount, uint gas);

    receive() external payable{
        emit log( address(this).balance, gasleft() );
    }

}