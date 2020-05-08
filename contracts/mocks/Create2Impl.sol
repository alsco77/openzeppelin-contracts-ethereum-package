pragma solidity ^0.6.0;

import "../utils/Create2.sol";
import "../introspection/ERC1820Implementer.sol";
import "../Initializable.sol";

contract Create2ImplUpgradeable is Initializable {
    function __Create2Impl_init() internal {
        __Create2Impl_init_unchained();
    }

    function __Create2Impl_init_unchained() internal {
        
        
    }

    function deploy(uint256 value, bytes32 salt, bytes memory code) public {
        Create2.deploy(value, salt, code);
    }

    function deployERC1820Implementer(uint256 value, bytes32 salt) public {
        // solhint-disable-next-line indent
        Create2.deploy(value, salt, type(ERC1820Implementer).creationCode);
    }

    function computeAddress(bytes32 salt, bytes32 codeHash) public view returns (address) {
        return Create2.computeAddress(salt, codeHash);
    }

    function computeAddressWithDeployer(bytes32 salt, bytes32 codeHash, address deployer) public pure returns (address) {
        return Create2.computeAddress(salt, codeHash, deployer);
    }

    receive() payable external {}
}
