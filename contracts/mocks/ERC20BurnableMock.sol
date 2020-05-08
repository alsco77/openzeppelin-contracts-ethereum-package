pragma solidity ^0.6.0;

import "../token/ERC20/ERC20Burnable.sol";
import "../Initializable.sol";

contract ERC20BurnableMockUpgradeable is Initializable, ERC20BurnableUpgradeable {
    function __ERC20BurnableMock_init(
        string memory name,
        string memory symbol,
        address initialAccount,
        uint256 initialBalance
    ) internal {
        __Context_init_unchained();
        __ERC20_init_unchained(name, symbol);
        __ERC20Burnable_init_unchained();
        __ERC20BurnableMock_init_unchained(name, symbol, initialAccount, initialBalance);
    }

    function __ERC20BurnableMock_init_unchained(
        string memory name,
        string memory symbol,
        address initialAccount,
        uint256 initialBalance
    ) internal {
        
        
        _mint(initialAccount, initialBalance);
    
    }

    
}
