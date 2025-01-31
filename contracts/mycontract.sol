// SPDX-License-Identifier: UNLICENSED

// DO NOT MODIFY BELOW THIS
pragma solidity ^0.8.17;

import "hardhat/console.sol";

contract Splitwise {
// DO NOT MODIFY ABOVE THIS

// ADD YOUR CONTRACT CODE BELOW

    // Mapping to track debts: debtor → (creditor → amount owed)
    mapping(address => mapping(address => uint32)) public debts;

    // Events for tracking
    event IOUAdded(address indexed debtor, address indexed creditor, uint32 amount);

    // Function to add an IOU
    function add_IOU(address creditor, uint32 amount) public {
        address debtor = msg.sender; // Store msg.sender in memory to save gas
        require(creditor != debtor, "You cannot owe yourself"); // Prevent self-loan
        
        unchecked {
            debts[debtor][creditor] += amount;
        }
    }

    // Function to check how much one user owes another
    function lookup(address debtor, address creditor) public view returns (uint32) {
        return debts[debtor][creditor];
    }

}
