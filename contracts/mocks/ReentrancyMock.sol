pragma solidity ^0.6.0;

import "../utils/ReentrancyGuard.sol";
import "./ReentrancyAttack.sol";
import "../Initializable.sol";

contract ReentrancyMockUpgradeable is Initializable, ReentrancyGuardUpgradeable {
    function __ReentrancyMock_init() internal {
        __ReentrancyGuard_init_unchained();
        __ReentrancyMock_init_unchained();
    }

    function __ReentrancyMock_init_unchained() internal {
        
        
        counter = 0;
    
    }

    uint256 public counter;

    

    function callback() external nonReentrant {
        _count();
    }

    function countLocalRecursive(uint256 n) public nonReentrant {
        if (n > 0) {
            _count();
            countLocalRecursive(n - 1);
        }
    }

    function countThisRecursive(uint256 n) public nonReentrant {
        if (n > 0) {
            _count();
            // solhint-disable-next-line avoid-low-level-calls
            (bool success,) = address(this).call(abi.encodeWithSignature("countThisRecursive(uint256)", n - 1));
            require(success, "ReentrancyMock: failed call");
        }
    }

    function countAndCall(ReentrancyAttack attacker) public nonReentrant {
        _count();
        bytes4 func = bytes4(keccak256("callback()"));
        attacker.callSender(func);
    }

    function _count() private {
        counter += 1;
    }
}
