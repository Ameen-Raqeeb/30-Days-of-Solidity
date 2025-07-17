// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract YesNoCounter{
    // Unsigned Integer and Anyone Can View It
    // This is a state variable since it is out of the function
    uint256 public counter;

    // Function to Increment Counter
    function Yes() public { // Gas Fee -->
        counter++;
    }

    // Function to Decrease Counter
    function No() public {
        counter--;
    }

    // Function to Reset Counter
    function Reset() public {
        counter = 0;
    }

}
