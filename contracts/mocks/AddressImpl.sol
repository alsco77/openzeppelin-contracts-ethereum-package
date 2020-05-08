pragma solidity ^0.6.0;

import "../utils/Address.sol";
import "../Initializable.sol";

contract AddressImplUpgradeable is Initializable {
    function __AddressImpl_init() internal {
        __AddressImpl_init_unchained();
    }

    function __AddressImpl_init_unchained() internal {
        
        
    }

    function isContract(address account) external view returns (bool) {
        return Address.isContract(account);
    }

    function sendValue(address payable receiver, uint256 amount) external {
        Address.sendValue(receiver, amount);
    }

    // sendValue's tests require the contract to hold Ether
    receive () external payable { }
}
