pragma solidity >=0.4.22 <0.9.0;

contract SimpleBank {
    mapping (address => uint) private balances;
    
    function deposit() public payable {
        require((balances[msg.sender] + msg.value) >= balances[msg.sender]);
        
        balances[msg.sender] += msg.value;
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
