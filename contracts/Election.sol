pragma solidity ^0.5.0;

contract Election{

    // Model a Candidate
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }
        // Store candidate
        // Read candidate
    string public candidate;
        // Constructor
    constructor () public {
        candidate = "Candidate 1";
    }
}