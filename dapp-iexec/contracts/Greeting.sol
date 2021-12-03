// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

import {Oracle} from  "./Oracle.sol";


contract Greeting {

    string public status;
    uint256 public updatedate;

    function getOracleData() public returns (string memory) {
        bytes32 oracleId = 0xe0b3ed55241d8feffa6c3654deb863d704a87a158ebc0bba224c655c5b9b6192;
        address oracleAddress = 0x0a7eAc657bd7fFF5F8740B0608B8EF1eA5170aDf;
        Oracle oracleContract = Oracle(oracleAddress);
        (string memory value, uint256 date) = oracleContract.getString(
            oracleId
        );
        status = value;
        updatedate = date;
        return value;
    }
}