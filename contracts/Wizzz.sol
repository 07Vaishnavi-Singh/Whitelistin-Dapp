// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

 contract Wizzz {

//This is the maximum number of members that can be  whitlisted and will be set by the deployer 
uint8 public maxWhitelistedMembers;

//The number of members that has been whitelisted at a particular time 
uint8 public numberOfWhitelistedMembers;

// this is the mapping of the memebrs address to boolean value of whether they are whitelisted or not 
mapping (address => bool) public whetherIsWhitelisted ;


//constructor to set the maximum members that can be whitelisted by the deploeyr of the contract
constructor( uint8 _maxWhitelistedMembers) {
maxWhitelistedMembers = _maxWhitelistedMembers ;
}
 
 // function to add members to the list of whitelisted members 
function addToWhitelist(address _tobeAdded) public {
    // a particular address will be whitelisted only once 
    require( !whetherIsWhitelisted[_tobeAdded] , "The typed address has already been added to the whitelist ");
    require( numberOfWhitelistedMembers < maxWhitelistedMembers , "The maximum limit of adding  the whitelisting members have been reached, better luck next time " );
    
    // getting the typed address to be whitelisted 
    whetherIsWhitelisted[_tobeAdded] = true ;

    //overflow is taken care by the compile version (8+)
    numberOfWhitelistedMembers += 1 ;

}





 }
