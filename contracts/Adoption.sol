//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Adoption {
  // 保存领养者的地址  
  address[16] public adopters;  

  // 领养宠物
  function adopt(uint petId) public returns (uint) {
    // 确保id在数组长度内
    require(petId >= 0 && petId <= 15);
    // 确保不出现重复领取
    require(adopters[petId] == address(0));
    // 保存调用这地址
    adopters[petId] = msg.sender;
    return petId;
  }

  // 返回领养者
  function getAdopters() public view returns (address[16] memory) {
    return adopters;
  }

}