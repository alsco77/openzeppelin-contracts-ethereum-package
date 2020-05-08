pragma solidity ^0.6.0;

import "../introspection/ERC1820Implementer.sol";
import "../Initializable.sol";

contract ERC1820ImplementerMockUpgradeable is Initializable, ERC1820ImplementerUpgradeable {
    function __ERC1820ImplementerMock_init() internal {
        __ERC1820Implementer_init_unchained();
        __ERC1820ImplementerMock_init_unchained();
    }

    function __ERC1820ImplementerMock_init_unchained() internal {
        
        
    }

    function registerInterfaceForAddress(bytes32 interfaceHash, address account) public {
        _registerInterfaceForAddress(interfaceHash, account);
    }
}
