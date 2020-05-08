pragma solidity ^0.6.0;

import "../token/ERC20/ERC20Capped.sol";
import "../Initializable.sol";

contract ERC20CappedMockUpgradeable is Initializable, ERC20CappedUpgradeable {
    function __ERC20CappedMock_init(string memory name, string memory symbol, uint256 cap) internal {
        __Context_init_unchained();
        __ERC20_init_unchained(name, symbol);
        __ERC20Capped_init_unchained(cap);
        __ERC20CappedMock_init_unchained(name, symbol, cap);
    }

    function __ERC20CappedMock_init_unchained(string memory name, string memory symbol, uint256 cap) internal {
        
         
    }

    

    function mint(address to, uint256 tokenId) public {
        _mint(to, tokenId);
    }
}
