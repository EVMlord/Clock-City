// SPDX-License-Identifier: MIT
// Forged in SVG by EVMlord for Clock City.
pragma solidity ^0.8.19;

interface ICCDO {
    function constructTokenURI(
        uint256 I,
        address q,
        address r,
        uint256 w,
        uint256 x
    ) external view returns (string memory);
}

contract ClockCityMetadata {

    ICCDO Descriptor;

    constructor(ICCDO addr) {
        Descriptor = addr;
    }

    function constructTokenURI(uint256 tokenID, address seed, address holder, uint256 w, uint256 x) public view returns (string memory) {
        
        return Descriptor.constructTokenURI(
             tokenID,
             seed,
             holder,
             w,
             x
        );
    }
}
