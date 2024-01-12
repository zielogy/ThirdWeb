// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract Verify {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(msg.sender == owner, "Only Owner can modify" );
        _;
    }

    function add (uint256 a, uint256 b) public view onlyOwner returns(uint256)  {
        return a + b;
    }
}
