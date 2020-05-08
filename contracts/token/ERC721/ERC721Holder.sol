pragma solidity ^0.6.0;

import "./IERC721Receiver.sol";
import "../../Initializable.sol";

contract ERC721HolderUpgradeable is Initializable, IERC721ReceiverUpgradeable {
    function __ERC721Holder_init() internal {
        __IERC721Receiver_init_unchained();
        __ERC721Holder_init_unchained();
    }

    function __ERC721Holder_init_unchained() internal {
        
        
    }

    function onERC721Received(address, address, uint256, bytes memory) public virtual override returns (bytes4) {
        return this.onERC721Received.selector;
    }
}
