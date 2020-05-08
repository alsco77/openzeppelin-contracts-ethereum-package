pragma solidity ^0.6.0;

import "../token/ERC721/IERC721Receiver.sol";
import "../Initializable.sol";

contract ERC721ReceiverMockUpgradeable is Initializable, IERC721ReceiverUpgradeable {
    function __ERC721ReceiverMock_init(bytes4 retval, bool reverts) internal {
        __IERC721Receiver_init_unchained();
        __ERC721ReceiverMock_init_unchained(retval, reverts);
    }

    function __ERC721ReceiverMock_init_unchained(bytes4 retval, bool reverts) internal {
        
        
        _retval = retval;
        _reverts = reverts;
    
    }

    bytes4 private _retval;
    bool private _reverts;

    event Received(address operator, address from, uint256 tokenId, bytes data, uint256 gas);

    

    function onERC721Received(address operator, address from, uint256 tokenId, bytes memory data)
        public override returns (bytes4)
    {
        require(!_reverts, "ERC721ReceiverMock: reverting");
        emit Received(operator, from, tokenId, data, gasleft());
        return _retval;
    }
}
