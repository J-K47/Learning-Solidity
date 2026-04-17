// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ViewFunction {

    // These are state variables. They are permanently stored on the blockchain.
    uint256 public rewardMultiplier = 10;
    uint256 public totalPlayers = 100;

     /*
     * @notice A 'view' function CAN read data from the blockchain state,
     * but it CANNOT modify (write to) the state.
     *
     * It allows you to see the current state of the contract.
     * Calling a view function from outside the blockchain costs no gas.
     */
    function calculateBonus(uint256 playerScore) public view returns (uint256) {
        // We are READING the state variable 'rewardMultiplier'.
        // If we tried to CHANGE 'rewardMultiplier' here (e.g., rewardMultiplier = 20;), 
        // the compiler would throw an error!
        return playerScore * rewardMultiplier;
    }
     /*
     * @notice Another view function example: Returning multiple state variables.
     * This simply fetches existing data without altering anything.
     */
    function getGameStats() public view returns (uint256, uint256) {
        // Reading both state variables
        return (rewardMultiplier, totalPlayers);
    }
}
 
