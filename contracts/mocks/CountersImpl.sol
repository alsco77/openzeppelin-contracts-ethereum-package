pragma solidity ^0.6.0;

import "../utils/Counters.sol";
import "../Initializable.sol";

contract CountersImplUpgradeable is Initializable {
    function __CountersImpl_init() internal {
        __CountersImpl_init_unchained();
    }

    function __CountersImpl_init_unchained() internal {
        
        
    }

    using Counters for Counters.Counter;

    Counters.Counter private _counter;

    function current() public view returns (uint256) {
        return _counter.current();
    }

    function increment() public {
        _counter.increment();
    }

    function decrement() public {
        _counter.decrement();
    }
}
