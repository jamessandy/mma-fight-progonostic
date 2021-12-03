pragma solidity >=0.4.22 <0.8.0;

interface Oracle {
    function getString(bytes32) external view returns (string memory, uint256);
}