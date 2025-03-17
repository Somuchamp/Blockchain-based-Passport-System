// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract BlockchainPassportSystem {
    struct Passport {
        string name;
        string nationality;
        uint256 dateOfBirth;
        string passportNumber;
        bool isValid;
    }
    
    mapping(address => Passport) private passports;
    
    function setPassport(string memory _name, string memory _nationality, uint256 _dateOfBirth, string memory _passportNumber) public {
        passports[msg.sender] = Passport(_name, _nationality, _dateOfBirth, _passportNumber, true);
    }
    
    function getPassport() public view returns (string memory, string memory, uint256, string memory, bool) {
        Passport memory p = passports[msg.sender];
        return (p.name, p.nationality, p.dateOfBirth, p.passportNumber, p.isValid);
    }
    
    function invalidatePassport() public {
        require(passports[msg.sender].isValid, "Passport is already invalid");
        passports[msg.sender].isValid = false;
    }
    
    function validatePassport() public {
        require(!passports[msg.sender].isValid, "Passport is already valid");
        passports[msg.sender].isValid = true;
    }
}
