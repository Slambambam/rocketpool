pragma solidity 0.4.19;


contract RocketFactoryInterface {
    /// @dev Only allow access from the latest version of these RocketPool contracts
    modifier onlyLatestRocketPool() {_;}
    /// @dev Create a new RocketPoolMini contract, deploy to the etherverse and return the address to the caller
    /// @dev Note that the validation and logic for creation should be done in the calling contract
    /// @param _nodeOwner The node that owns that minipool
    function createRocketPoolMini(address _nodeOwner) public onlyLatestRocketPool returns(address);
}