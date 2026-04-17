// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract NonPayable {

    // State variables to track contract data
    string public greeting = "Hello";
    uint256 public updateCount = 0;

     /*
     * @notice Any function in solidity is By default NON-PAYABLE
     * You do NOT need a special keyword to make it non-payable.
     * Important:
     * 1. If a user tries to send Ether (ETH) while calling this function,
     * the transaction will automatically fail (revert).
     * 2. It changes data on the blockchain (so it costs gas).
     */
    function updateGreeting(string memory newGreeting) public {
        greeting = newGreeting;
        updateCount += 1;
        // This function works perfectly as long as 0 ETH is attached to the call.
    }
}
