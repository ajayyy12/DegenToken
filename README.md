# Cricket Gear DegenToken
DegenToken contains an in-game cricket shop where you can redeem cricket gear equipments. It incorporates features such as minting, burning, and redeeming tokens for specific cricket gears.

## Description
- Minting: Only the contract owner can mint new tokens.
- Burning: Any account can burn their tokens.
- Transferring: Allows token holders to transfer tokens from msg.sender to others.

- Redeeming: allows token holders to redeem their tokens for cricket gears.

-- Parameters:

gearID: The ID of the gear to redeem.
-- Requirements:

- gearID must be between 1 and 3.
- The caller must have at least 3 tokens.
- The specified gear must be available (frequency > 0).
### Data Structures
- Mappings:
mapping(uint256 => uint256) public gear_frequency: Tracks the frequency of each cricket gear.
- Arrays:
string[] public cricket_gears: Holds the names of the cricket gears.

## Getting Started

### Installing

- Fork the project repository and open it on gitpod
- Download the zip and run it locally
- Copy paste the project url to gitpod and run

### Executing program

- In order to deploy the contract to avalanche network , we can either connect our metamask to remix and click on deploy button or
- We can create a .env file with our private key on gitpod and run the below command:
  ```shell
  npx hardhat run scripts/deploy.js --network fuji
  ```

  To verify:
  ```shell
  npx hardhat verify *address* --network fuji
  ```

## Help

Refer to the avalanche documentation - [https://docs.avax.network/]

## Authors

Ajay SS
[@0j0y1512@gmail.com]


## License

This project is licensed under the [MIT] License - see the LICENSE.md file for details
