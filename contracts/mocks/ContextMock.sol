pragma solidity ^0.6.0;

import "../GSN/Context.sol";
import "../Initializable.sol";

contract ContextMockUpgradeable is Initializable, ContextUpgradeable {
    function __ContextMock_init() internal {
        __Context_init_unchained();
        __ContextMock_init_unchained();
    }

    function __ContextMock_init_unchained() internal {
        
        
    }

    event Sender(address sender);

    function msgSender() public {
        emit Sender(_msgSender());
    }

    event Data(bytes data, uint256 integerValue, string stringValue);

    function msgData(uint256 integerValue, string memory stringValue) public {
        emit Data(_msgData(), integerValue, stringValue);
    }
}

contract ContextMockCallerUpgradeable is Initializable {
    function __ContextMockCaller_init() internal {
        __ContextMockCaller_init_unchained();
    }

    function __ContextMockCaller_init_unchained() internal {
        
        
    }

    function callSender(ContextMock context) public {
        context.msgSender();
    }

    function callData(ContextMock context, uint256 integerValue, string memory stringValue) public {
        context.msgData(integerValue, stringValue);
    }
}
