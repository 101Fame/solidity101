// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract SimpleBank {
    mapping (address => uint) private balances;
    

    // Remix IDE, you can set msg.value by filling in the Value field which is located at the left of the Deploy button. 
    //In Solidity, the payable keyword allows a function to receive Ether during its execution. If a function does not have the payable modifier, it will reject any Ether sent to it. Additionally, if a function is marked as payable but is called without sending Ether, it will still execute
    function deposit() public payable {
        require((balances[msg.sender] + msg.value) >= balances[msg.sender]);
        
        //The msg.value is determined by the sender of the transaction and remains constant on every call. It represents the amount of Ether (in Wei) sent with the message (or transaction
        // msg.value is automatically set to the amount of ether sent with that payable function.
        balances[msg.sender] += msg.value; //FIXME: i don't understand why i have to set value while deploying and not during the call 
    }
    
    function withdraw(uint amount) public {
        require(balances[msg.sender] >= amount);
        
        balances[msg.sender] -= amount;
        
        payable(msg.sender).transfer(amount);
    }
    
    function balance() view public returns (uint) {
        return balances[msg.sender];
    }
}
