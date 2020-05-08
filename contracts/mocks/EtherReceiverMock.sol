pragma solidity ^0.6.0;
import "../Initializable.sol";

contract EtherReceiverMockUpgradeable is Initializable {
    function __EtherReceiverMock_init() internal {
        __EtherReceiverMock_init_unchained();
    }

    function __EtherReceiverMock_init_unchained() internal {
        
        
    }

    bool private _acceptEther;

    function setAcceptEther(bool acceptEther) public {
        _acceptEther = acceptEther;
    }

    receive () external payable {
        if (!_acceptEther) {
            revert();
        }
    }
}
