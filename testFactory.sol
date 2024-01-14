// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./testStorage.sol";



contract StorageFactory{
    SimpleStorage[] public simplestorageArray;

    function createSimpleStorageContract()public {

        SimpleStorage simpleStorage = new SimpleStorage();
        simplestorageArray.push(simpleStorage);

    }
    function sfStore(uint256 _simpleStorageindex, uint256 _simplestorageNumber)public {
        SimpleStorage simpleStorage = simplestorageArray[_simpleStorageindex];
        simpleStorage.store(_simplestorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex, uint256 _favoriteNumberIndex) public view returns(uint256) {
    SimpleStorage simpleStorage = simplestorageArray[_simpleStorageIndex];
    return simpleStorage.retrieve(_favoriteNumberIndex);
}

}
