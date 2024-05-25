// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20,  Ownable {
    mapping(uint256 => uint256) public gear_frequency; 
    string[] public cricket_gears; 

    constructor() ERC20("Degen", "DGN") Ownable(msg.sender) {
        cricket_gears=[" 1.english willow bat","2.premium ICC white ball","3.VK signed jersey"];
        gear_frequency[1]=3;
        gear_frequency[2]=5;
        gear_frequency[3]=2;
    }

    function mint(address to_address, uint256 input_value) public onlyOwner {
        _mint(to_address, input_value);
    }
    function redeem(uint256 gearID) public {
        assert(gearID > 0 && gearID <= 3);
        require(balanceOf(msg.sender) >= 3);
        require(gear_frequency[gearID]>0,"No items left");
        _burn(msg.sender, 1*gearID);
         gear_frequency[gearID]--;
    }
     function burn(uint256 input_value)public returns(bool) {
        _burn(msg.sender, input_value);
        return true;
    }

    function transfer(address recepient,uint256 input_value)public override returns(bool){
        _transfer(msg.sender, recepient, input_value);
        return true;
    }
}
