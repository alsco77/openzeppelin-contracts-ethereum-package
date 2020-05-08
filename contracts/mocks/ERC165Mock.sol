pragma solidity ^0.6.0;

import "../introspection/ERC165.sol";
import "../Initializable.sol";

contract ERC165MockUpgradeable is Initializable, ERC165Upgradeable {
    function __ERC165Mock_init() internal {
        __ERC165_init_unchained();
        __ERC165Mock_init_unchained();
    }

    function __ERC165Mock_init_unchained() internal {
        
        
    }

    function registerInterface(bytes4 interfaceId) public {
        _registerInterface(interfaceId);
    }
}
