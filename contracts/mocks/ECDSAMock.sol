pragma solidity ^0.6.0;

import "../cryptography/ECDSA.sol";
import "../Initializable.sol";

contract ECDSAMockUpgradeable is Initializable {
    function __ECDSAMock_init() internal {
        __ECDSAMock_init_unchained();
    }

    function __ECDSAMock_init_unchained() internal {


    }

    using ECDSA for bytes32;

    function recover(bytes32 hash, bytes memory signature) public pure returns (address) {
        return hash.recover(signature);
    }

    function toEthSignedMessageHash(bytes32 hash) public pure returns (bytes32) {
        return hash.toEthSignedMessageHash();
    }
}
