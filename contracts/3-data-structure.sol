
//SPDX-License-Identifier: MT
pragma solidity ^0.8.4;

contract data_structure {

    //Data structure of a customer
    struct Customer{
        uint256 id;
        string name;
        string email;
    }

    Customer Customer_1 = Customer(1,"Andres","andres@xx.com");


    //Fixed length arrays
    uint256 [5] public fixed_list_units =[1,2,3,4,5];
    //Dynamic array
    uint256 [] public dynamic_array =[1,2,3,4,5];

    //Customer dynamic array
    Customer[] public dynamic_list_customer;

    function array_modification(uint256 _id, string memory _name, string memory _email) public
    {
        Customer memory newCustomer = Customer( _id, _name, _email );
        dynamic_list_customer.push( newCustomer );
    }


    //Mappings

    mapping(address => uint256) public address_unit;
    
    function assignNumber(uint256 _number) public {
        address_unit[ msg.sender ] = _number;
    }

    mapping(string => uint256 []) public string_ListUnits;

    function assignList(string memory _name,uint256 _number) public {
        string_ListUnits[ _name ].push( _number );
    }

    mapping(address => Customer) public address_dataStructure;

    function assignDataStructure(uint256 _id, string memory _name, string memory _email) public {
        address_dataStructure[ msg.sender ] = Customer( _id, _name, _email );
    }
}