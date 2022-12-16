const { ethers } = require("hardhat");

const main= async()=>  {

// here we have created the instance of the contract that we will be deploying 
 const contractInstance= await ethers.getContractFactory("Wizzz");

 //here we deploy the instance by passing 25 as the argument for constructor 
 const deployingInstance = await contractInstance.deploy(25) ;

 //waiting till the contract is deployed 
 await deployingInstance.deployed();

 //consoling the address of the deployed contract
 console.log("The Greeter contract deployed at the address = ", deployingInstance.address );


}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });