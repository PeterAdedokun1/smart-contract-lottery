// Layout of Contract:
// version
// imports
// errors
// interfaces, libraries, contracts
// Type declarations
// State variables
// Events
// Modifiers
// Functions

// Layout of Functions:
// constructor
// receive function (if exists)
// fallback function (if exists)
// external
// public
// internal
// private
// view & pure functions

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;
/**
 * @title A sample Raffle Contract
 * @author Peter Opxy
 * @notice This contract is for creating a sample raffle contract
 * @dev This implements the Chainlink VRF Version 2
 */

 
contract Raffle {
    error Raffle_SendMoreToEnterRaffle()
    uint256 private immutable i_entranceFee;

    constructor(uint256 entranceFee){
        i_entranceFee = entranceFee;
    }
    function enterRaffle() public payable {
        // require(msg.value >=i_entranceFee, "Not enough ETH sent!");
        if(msg.value < i_entranceFee){
            revert Raffle_SendMoreToEnterRaffle();
        }
    }
    function pickWinner() public {}



    // getter functions
    function getEntraceFee() public view returns(uint256){
        return i_entranceFee;
    }
}
