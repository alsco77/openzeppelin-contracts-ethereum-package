pragma solidity ^0.6.0;

import '../token/ERC20/TokenTimelock.sol';
import "../Initializable.sol";

contract TokenTimelockMockUpgradeable is Initializable, TokenTimelockUpgradeable {

    constructor(IERC20 token, address beneficiary, uint256 releaseTime) public  {
        __TokenTimelockMock_init(token, beneficiary, releaseTime);
    }

    function __TokenTimelockMock_init(IERC20 token, address beneficiary, uint256 releaseTime) internal initializer {
        __TokenTimelock_init_unchained(token, beneficiary, releaseTime);
        __TokenTimelockMock_init_unchained(token, beneficiary, releaseTime);
    }

    function __TokenTimelockMock_init_unchained(IERC20 token, address beneficiary, uint256 releaseTime) internal initializer {



    }

}
