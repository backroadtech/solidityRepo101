// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.7.0 < 0.9.0;

contract basicContract {
    //General varibales
    uint  public myBalance = 15;
    int private txAmount = -2; //can only be called from the contract
    string internal coinName = "EPIC Coin"; // can only be called by the contract and or other contracts within it
    bool isValid = true;

    //Global variables
    uint public blockTime = block.timestamp;
    address public sender = msg.sender;

    //Arrays
    string[] public tokenNames = ["Chainlink","Doge","Ethereum"];
    uint[5] levels = [1,2,3,4,5];

    //Datetime
    uint timeNow1Sec = 1 seconds;
    uint timeNow1Min = 1 minutes;
    uint timeNow1Hour = 1 hours;
    uint timeNow1Day = 1 days;
    uint timeNow1Week = 1 weeks;

    //ChessBets Time Interval Of Gameplay
    uint gameTimeLength = 10 minutes;

    //struct
    struct User {
        address userAddress;
        string name;
        bool hasTraded;
    }

    //Store a struct in an array
    User[] public users;

    //Mapping
    mapping (string => string) public accountNameMap;

    //Mapping and structs - Nested
    mapping (address => mapping(string => User)) private userNestedMap;

}

//Enums, modifiers, storage, fallbacks, sending, recieving