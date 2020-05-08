pragma solidity ^0.6.0;

import "../token/ERC721/ERC721.sol";
import "../GSN/GSNRecipient.sol";
import "../GSN/GSNRecipientSignature.sol";
import "../Initializable.sol";

/**
 * @title ERC721GSNRecipientMock
 * A simple ERC721 mock that has GSN support enabled
 */
contract ERC721GSNRecipientMockUpgradeable is Initializable, ERC721Upgradeable, GSNRecipientUpgradeable, GSNRecipientSignatureUpgradeable {
    function __ERC721GSNRecipientMock_init(string memory name, string memory symbol, address trustedSigner) internal {
        __ERC165_init_unchained();
        __Context_init_unchained();
        __ERC721_init_unchained(name, symbol);
        __GSNRecipient_init_unchained();
        __GSNRecipientSignature_init_unchained(trustedSigner);
        __ERC721GSNRecipientMock_init_unchained(name, symbol, trustedSigner);
    }

    function __ERC721GSNRecipientMock_init_unchained(string memory name, string memory symbol, address trustedSigner) internal {
        
         
    }

    

    function mint(uint256 tokenId) public {
        _mint(_msgSender(), tokenId);
    }

    function _msgSender() internal view override(ContextUpgradeable, GSNRecipientUpgradeable) returns (address payable) {
        return GSNRecipient._msgSender();
    }

    function _msgData() internal view override(ContextUpgradeable, GSNRecipientUpgradeable) returns (bytes memory) {
        return GSNRecipient._msgData();
    }
}
