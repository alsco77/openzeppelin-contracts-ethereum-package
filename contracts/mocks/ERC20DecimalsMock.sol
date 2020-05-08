pragma solidity ^0.6.0;

import "../token/ERC20/ERC20.sol";
import "../Initializable.sol";

contract ERC20DecimalsMockUpgradeable is Initializable, ERC20Upgradeable {
    function __ERC20DecimalsMock_init(string memory name, string memory symbol, uint8 decimals) internal {
        __Context_init_unchained();
        __ERC20_init_unchained(name, symbol);
        __ERC20DecimalsMock_init_unchained(name, symbol, decimals);
    }

    function __ERC20DecimalsMock_init_unchained(string memory name, string memory symbol, uint8 decimals) internal {
        
        
        _setupDecimals(decimals);
    
    }

    
}
