pragma solidity ^0.6.0;

import { MerkleProof } from "../cryptography/MerkleProof.sol";
import "../Initializable.sol";

contract MerkleProofWrapperUpgradeable is Initializable {
    function __MerkleProofWrapper_init() internal {
        __MerkleProofWrapper_init_unchained();
    }

    function __MerkleProofWrapper_init_unchained() internal {
        
        
    }

    function verify(bytes32[] memory proof, bytes32 root, bytes32 leaf) public pure returns (bool) {
        return MerkleProof.verify(proof, root, leaf);
    }
}
