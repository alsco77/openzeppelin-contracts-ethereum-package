pragma solidity ^0.6.0;

import "../utils/Strings.sol";
import "../Initializable.sol";

contract StringsMockUpgradeable is Initializable {
    function __StringsMock_init() internal {
        __StringsMock_init_unchained();
    }

    function __StringsMock_init_unchained() internal {
        
        
    }

    function fromUint256(uint256 value) public pure returns (string memory) {
        return Strings.toString(value);
    }
}
