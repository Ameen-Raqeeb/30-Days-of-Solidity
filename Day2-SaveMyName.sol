// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract SaveMyName {

    // Declare the String type variables. These are also state variables
    // which means they are stored on the blockchain.
    string name;
    string bio;
    uint256 age;
    string profession;

    // memory is used for temporary storage. It's like writing down in a whiteboard
    // public is used to make the function accessible from outside the contract
    // add is the name of the function
    function add(string memory _name, string memory _bio, uint256 _age, string memory _profession) public {

        name = _name;
        bio = _bio;
        age = _age;
        profession = _profession;
    }

    // view is used to indicate that the function does not modify the state of the contract
    // returns is used to indicate that the function returns a value
    function retrieve() public view returns (string memory, string memory, uint256 , string memory) {
        return (name , bio, age, profession);
    }

    // NOTE --> DO NOT WRITE EXPENSIVE GAS FEE FUNCTIONS
    // The below function is the combination of the above two functions
    function saveAndRetrieve(string memory _name, string memory _bio) public returns (string memory, string memory) {
    name = _name;
    bio = _bio;
    return (name, bio);
    }

}
