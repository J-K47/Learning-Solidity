// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PayableFunction {

    // A mapping to keep track of how much Ether (in wei) each user has deposited
    mapping(address => uint256) public userBalances;

    /*
     * @notice The 'payable' keyword allows a function to receive Ether.
     * Important: 
     * 1. Without 'payable', the function would automatically reject incoming ETH.
     * 2. msg.value: A special global variable that tells you exactly how much ETH the user sent.
     * 3. msg.sender: The address of the person calling the function.
     */
    function depositFunds() public payable {
        // We add the amount of ETH sent (msg.value) to the sender's recorded balance.
        // The actual Ether is automatically held in the smart contract's balance.
        userBalances[msg.sender] += msg.value;
    }
}
