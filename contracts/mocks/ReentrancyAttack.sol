pragma solidity ^0.6.0;

import "../GSN/Context.sol";
import "../Initializable.sol";
contract ReentrancyAttackUpgradeable is Initializable, ContextUpgradeable {
    constructor() public  {
        __ReentrancyAttack_init();
    }

    function __ReentrancyAttack_init() internal initializer {
        __Context_init_unchained();
        __ReentrancyAttack_init_unchained();
    }

    function __ReentrancyAttack_init_unchained() internal initializer {


    }

    function callSender(bytes4 data) public {
        // solhint-disable-next-line avoid-low-level-calls
        (bool success,) = _msgSender().call(abi.encodeWithSelector(data));
        require(success, "ReentrancyAttack: failed call");
    }
}
