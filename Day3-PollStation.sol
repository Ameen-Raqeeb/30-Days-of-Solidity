// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

contract PollStation {
    
    // Desclares the array
    // You can also mention the length of the array if you want 
    string[]  candidateNames;

    // Declares the Mapping
    // Similar To Dictionaries. It has a Key and Each Key has a Value
    mapping (string => uint256)  voteCount; 

    function addCandidates (string memory _candidateName) public {
        candidateNames.push(_candidateName);
        voteCount[_candidateName] = 0;
    }

    function vote(string memory _candidateName) public {
        voteCount[_candidateName] ++;
    }

    function getCandidateNames() public view returns(string[] memory){
        return candidateNames;
    }

    function getVoteCount(string memory _candidateName) public view returns (uint256){
        return voteCount[_candidateName];
    } 
}
