pragma solidity ^0.6.0;

import "../access/Ownable.sol";
import "../Initializable.sol";

contract OwnableMockUpgradeable is Initializable, OwnableUpgradeable {
    constructor() public  {
        __OwnableMock_init();
    }

    function __OwnableMock_init() internal initializer {
        __Context_init_unchained();
        __Ownable_init_unchained();
        __OwnableMock_init_unchained();
    }

    function __OwnableMock_init_unchained() internal initializer {


    }
 }
