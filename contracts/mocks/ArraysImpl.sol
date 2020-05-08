pragma solidity ^0.6.0;

import "../utils/Arrays.sol";
import "../Initializable.sol";

contract ArraysImplUpgradeable is Initializable {
    function __ArraysImpl_init(uint256[] memory array) internal {
        __ArraysImpl_init_unchained(array);
    }

    function __ArraysImpl_init_unchained(uint256[] memory array) internal {
        
        
        _array = array;
    
    }

    using Arrays for uint256[];

    uint256[] private _array;

    

    function findUpperBound(uint256 element) external view returns (uint256) {
        return _array.findUpperBound(element);
    }
}
