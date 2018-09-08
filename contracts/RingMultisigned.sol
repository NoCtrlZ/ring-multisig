pragma solidity ^0.4.24;

import "./RingMultisig.sol";

/**
 * Used as base class for contracts which use multiple ring multisigs
 */
contract RingMultisigned {
    constructor() public {

    }




    modifier ringMultisigned(RingMultisig _ringMultisig, uint256[2] _tagPoint, uint256[] _ctlist) {
        require(_ringMultisig.isSignatureValid(_tagPoint, _ctlist));
        _;
    }
}
