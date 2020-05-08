pragma solidity ^0.6.0;

import "../payment/PullPayment.sol";
import "../Initializable.sol";

// mock class using PullPayment
contract PullPaymentMockUpgradeable is Initializable, PullPaymentUpgradeable {
    function __PullPaymentMock_init() internal {
        __PullPayment_init_unchained();
        __PullPaymentMock_init_unchained();
    }

    function __PullPaymentMock_init_unchained() internal {
        
         
    }

    

    // test helper function to call asyncTransfer
    function callTransfer(address dest, uint256 amount) public {
        _asyncTransfer(dest, amount);
    }
}
