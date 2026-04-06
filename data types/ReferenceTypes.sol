// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ArrayType {

    /*
    * An array is a way to store a list or collection of data, as long as all the items in the list are of the exact same type.
    * There are two main types of arrays: "dynamic" and "fixed-size".
    * A dynamic array (written with empty brackets []) can grow or shrink, meaning you can keep adding items to it later.
    * A fixed-size array (written with a number in the brackets, like [5]) has a strict size limit set from the beginning, which saves gas.
    */ 

    // This is a dynamic array. It stores a list of unsigned integers and can hold as many as you want.
    uint[] dynamicList = [10, 20, 30];         

    // This is a fixed-size array. The number 3 means it can hold exactly 3 numbers. You cannot add a 4th number to it.
    uint[3] fixedList = [1, 2, 3];

    // You can create arrays out of almost any data type. Here is a dynamic list of booleans.
    bool[] booleanList = [true, false, true];
}

contract ByteType {

    /*
    * A "byte array" is a dynamic collection of bytes, meaning its size can grow or shrink as needed.
    * In Solidity, we write this simply as 'bytes' (without a number at the end).
    * While you could technically create an array of single bytes by writing 'bytes1[]', 
    * using the special 'bytes' keyword is much better because the EVM handles it more efficiently and saves a lot of gas.
    * It is often used to store raw, unpredictable data like cryptographic signatures or long messages.
    */ 

    // We can store a dynamically sized string of text. 
    // Behind the scenes, the EVM converts this text into a flexible sequence of raw bytes.
    bytes textData = "Hello World";         
}

contract StringType {

    /*
    * A string is used to store text, like names, sentences, or any human-readable characters.
    * Under the hood, a string is basically a dynamic array, but specifically designed for UTF-8 text.
    * Because its size is flexible, it can grow as long as you need it to. However, the longer the text, the more gas it costs.
    * Note: If you have a very short piece of text (under 32 characters), it is often cheaper to use 'bytes32' instead of a string!
    */ 

    // Strings are perfect for storing readable messages, wrapped in double or single quotes.
    string greeting = "Hello, welcome to the blockchain!";         

    // You can also create an empty string and assign text to it later in your code.
    string emptyMessage = "";
}

contract StructType {

    /*
    * A "struct" is a way to create your own custom, complex data type.
    * It allows you to group multiple variables (even of different types) together under a single name.
    * It basically creates a record. For example, if you want to store a "User", 
    * they might need an ID (uint), a name (string), and an active status (bool). 
    * Structs keep related pieces of information organized in one place instead of having loose variables everywhere.
    */ 

    // First, we must define the struct. This does not save any data yet; 
    // it just tells the EVM what information a "Student" should contain.
    struct Student {
        uint256 id;
        string name;
        bool isGraduated;
    }

    // We can now use our new custom type to store actual data.
    // Here we create a single student variable and fill in their ID, name, and graduation status in order.
    Student studentOne = Student(1, "Alice", false);         

    // You can also just create the variable without assigning data immediately. 
    // It will start with default empty values (0 for uint, "" for string, false for bool) until you update it.
    Student studentTwo;
}

contract MappingType {

    /*
    * A mapping is like a digital dictionary, a phonebook, or a lookup table. It links a "key" to a "value".
    * You provide a specific key (like a user's address), and it instantly returns the value connected to it (like their account balance).
    * Unlike arrays, you cannot loop through a mapping or ask for its "length". You must know the exact key to look up the data.
    * If you try to look up a key that doesnot exist, it won't crash; it simply returns a default empty value (like 0 for integers or false for booleans).
    */ 

    // Mappings link keys to values. Here, we map a user's 'address' (the key) to a 'uint256' (the value).
    mapping(address => uint256) balances;         

    // You can also create a mapping inside of a mapping! 
    // Here, we map an address to another mapping, which links an item ID (uint) to an ownership status (bool).
    // This is like asking: "Does this specific address own this specific item ID?"
    mapping(address => mapping(uint => bool)) hasPurchasedItem;
}
