// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.7.0 < 0.9.0;

contract myEpicCoin {
    uint availableSupply;
    uint maxSupply; 

    constructor(uint _startingSupply, uint _maxSupply) {
    availableSupply = _startingSupply;
    maxSupply = _maxSupply;
    }
}

contract myEpicToken is myEpicCoin {
    constructor(uint ss, uint ms) myEpicCoin (ss, ms) {}

    function getAvailableSupply() public view returns (uint) {
        return availableSupply;
    }

    function getMaxSupply() public view returns (uint) {
        return maxSupply;
    }
}