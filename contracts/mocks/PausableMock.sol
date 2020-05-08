pragma solidity ^0.6.0;

import "../utils/Pausable.sol";
import "../Initializable.sol";

contract PausableMockUpgradeable is Initializable, PausableUpgradeable {
    function __PausableMock_init() internal {
        __Context_init_unchained();
        __Pausable_init_unchained();
        __PausableMock_init_unchained();
    }

    function __PausableMock_init_unchained() internal {
        
        
        drasticMeasureTaken = false;
        count = 0;
    
    }

    bool public drasticMeasureTaken;
    uint256 public count;

    

    function normalProcess() external whenNotPaused {
        count++;
    }

    function drasticMeasure() external whenPaused {
        drasticMeasureTaken = true;
    }

    function pause() external {
        _pause();
    }

    function unpause() external {
        _unpause();
    }
}
