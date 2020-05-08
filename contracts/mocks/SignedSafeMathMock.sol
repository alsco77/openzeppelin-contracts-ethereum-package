pragma solidity ^0.6.0;

import "../math/SignedSafeMath.sol";
import "../Initializable.sol";

contract SignedSafeMathMockUpgradeable is Initializable {
    function __SignedSafeMathMock_init() internal {
        __SignedSafeMathMock_init_unchained();
    }

    function __SignedSafeMathMock_init_unchained() internal {
        
        
    }

    function mul(int256 a, int256 b) public pure returns (int256) {
        return SignedSafeMath.mul(a, b);
    }

    function div(int256 a, int256 b) public pure returns (int256) {
        return SignedSafeMath.div(a, b);
    }

    function sub(int256 a, int256 b) public pure returns (int256) {
        return SignedSafeMath.sub(a, b);
    }

    function add(int256 a, int256 b) public pure returns (int256) {
        return SignedSafeMath.add(a, b);
    }
}
