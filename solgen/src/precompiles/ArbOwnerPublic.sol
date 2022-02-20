pragma solidity >=0.4.21 <0.9.0;

/// @title Provides non-owners with info about the current chain owners.
/// @notice Precompiled contract that exists in every Arbitrum chain at 0x000000000000000000000000000000000000006b.
interface ArbOwnerPublic {
    /// @notice See if the user is a chain owner
    function isChainOwner(address addr) external view returns(bool);

    /// @notice Retrieves the list of chain owners
    function getAllChainOwners() external view returns(address[] memory);

    /// @notice Gets the network fee collector
    function getNetworkFeeAccount() external view returns(address);
}
