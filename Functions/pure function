// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PureFunction {

    // This is a state variable (it is stored permanently on the blockchain)
    uint256 public baseRate = 5;

    /*
     * @notice A 'pure' function does NOT read from or write to the blockchain state.
     * It only uses the data passed directly into it via parameters.
     *
     * It guarantees the blockchain state won't be touched.
     * Calls from outside the blockchain cost no gas.
     */
    function addTwoNumbers(uint256 a, uint256 b) public pure returns (uint256) {
        // We are only using the local inputs 'a' and 'b'.
        // If we tried to use the state variable 'baseRate' here, the compiler would throw an error!
        return a + b;
    }

    /*
     * Another pure function example: Calculating simple interest.
     */
    function calculateInterest(uint256 principal, uint256 rate) public pure returns (uint256) {
        // Completely isolated math. No reading or writing to the blockchain.
        return (principal * rate) / 100;
    }
