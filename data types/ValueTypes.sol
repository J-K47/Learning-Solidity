// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract IntType {

    /*
    * Both variables are same, 256 is the maximum number of bits that EVM
    can store in one slot
    * So if we write int and int256 EVM will automatically allocate 256 bits
    to the int variable.
    * But it is better to write int256 than int because it makes it clear
    * We can also write int8,int16,int24 and every multiple of 8 until 256 
    */ 

    // As mentioned Earlier int is used to store integer values both negative and positive
    int  x = 10;         

    int256  y = 100;

    int8 z = -10;
}

contract UintType{

    /*
    * Both variables are same, 256 is the maximum number of bits that EVM
    can store in one slot
    * So if we write uint and uint256 EVM will automatically allocate 256 bits
    to the uint variable.
    * But it is better to write uint256 than uint because it makes it clear
    * We can also write uint8,uint16,uint24 and every multiple of 8 until 256 
    */ 

    // As mentioned Earlier uint is used to store unsigned integer values, meaning ONLY non-negative numbers (zero and positive)
    uint  x = 5;         

    uint256  y = 100;

    // Notice that unlike int, a uint cannot hold a negative value like -10
    uint8 z = 10;
}

contract AddressType {

    /*
    * Unlike integers (which can be 8 to 256 bits), an address is always exactly 20 bytes (160 bits) in size.
    * It is specifically designed to hold Ethereum account addresses or smart contract addresses.
    * Because its size is fixed and it serves a very specific purpose, there are no variations like "address256" or "address8" — you just write "address".
    */ 

    address userWallet = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;         

    // Addresses cannot be used for math like regular numbers; they simply point to where users or contracts live on the network
    address contractLocation = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
}

contract EnumType {

    /*
    * An enum (short for enumeration) is a way to create your own custom data type.
    * It acts as a restricted list of choices. A variable of this type can ONLY hold one of the specific options you define.
    * Behind the scenes, the EVM treats these options as simple numbers starting from 0 (the first option is 0, the second is 1, and so on).
    * An enum can have up to 256 different options, but developers usually only need a few to track things like "states" or "stages".
    */ 

    // First, we must define the enum and its list of choices. Let's create one to track an order.
    // In the background: Pending = 0, Shipped = 1, Delivered = 2
    enum OrderStatus {
        Pending,
        Shipped,
        Delivered
    }

    // Here we create a variable and set its default value to Pending.
    OrderStatus currentStatus = OrderStatus.Pending;         

    // We can also set it to any other valid choice from the OrderStatus list.
    OrderStatus updatedStatus = OrderStatus.Shipped;
}

contract BooleanType {

    /*
    * A boolean is the simplest data type; it represents a basic yes/no or true/false decision.
    * Even though a boolean conceptually only needs 1 bit of information (0 for false, 1 for true), 
    * the EVM stores it using 8 bits (1 byte) because that is the smallest chunk of data it can easily manage.
    * There are no size variations like "bool8" or "bool256" — you just write "bool".
    */ 

    // This is perfect for flags, like checking if a user is active or if a task is finished.
    bool isActive = true;         

    // By default, if you do not assign a value to a boolean when you create it, it will start as false.
    bool isFinished = false;
}

contract BytesType {

    /*
    * 'bytes' are used to store a sequence of raw data, like text or hexadecimal numbers.
    * You can specify the exact size you need, starting from bytes1 all the way up to bytes32.
    * If you know the size of your data beforehand, it is always better to use fixed sizes (like bytes32) because it saves gas.
    * There is also a dynamically sized 'bytes' (without a number) for data of unknown length, but fixed sizes are tightly packed into EVM slots.
    */ 

    // bytes are great for storing raw information. Here we store a short string of text.
    // Behind the scenes, the EVM automatically converts this text into a hexadecimal format.
    bytes32 wordData = "Hello";         

    // We can also assign exact hexadecimal values directly. This variable holds exactly one byte of data.
    bytes1 singleByteData = 0xff;

    // You can choose the exact size that fits your needs, like bytes4.
    bytes4 smallHexData = 0xabcdef12;
}