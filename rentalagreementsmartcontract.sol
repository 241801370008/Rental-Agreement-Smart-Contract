// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Project {
    uint256 private myValue;

    event ValueUpdated(uint256 oldValue, uint256 newValue);

    constructor(uint256 initialValue) {
        myValue = initialValue;
    }

    /// @notice Sets the new value.
    /// @param _newValue The new value to set.
    function setValue(uint256 _newValue) public {
        uint256 oldValue = myValue;
        myValue = _newValue;
        emit ValueUpdated(oldValue, myValue);
    }

    /// @notice Retrieves the current value.
    /// @return The current value.
    function getValue() public view returns (uint256) {
        return myValue;
    }
}
