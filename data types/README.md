Data Types are the containers which stores some value in it. Like 12, "Alice", false etc.

There are mainly two types of solidity data types

1) **Value Types Solidity**
   
Value-type data stores information directly in the memory. The variables that are then associated with these value types allow duplication in assignments or functions. Despite being duplicated, value-type data can maintain an independent copy of each of the duplicated variables. 

This means that if you make changes in the value of the duplicated variable, the original variable remains unaffected. Some common examples of value types in Solidity are listed as follows

1. Addresses
   
Created specifically for storage capacity of up to 20 bytes or 160 bytes, the address value type was created to correspond to the size of a typical Ethereum address. There are two different types of address values – “address” and “address Payable.”
Fundamentally, they both serve the same purpose, except for the fact that “address payable” can be used to assist in transferring Ether. 

2. Enums
   
Enums, abbreviated from enumerators, are the basic value types in Solidity. This data type is specifically used for defining constant values. Enums are used for improving the readability and maintenance of a smart contract.

Enums, by default, are created for the convenience of the user, and DApps don’t recognize this data type within the smart contract. It becomes integral for programmers to assign an integer value that corresponds to the Enum constant.     

3. Booleans
   
The Boolean value data type is an integral part of Solidity, used primarily for data types with binary results. Any “bool” data type can have two fixed values – (True/False, Yes/No). In Solidity, the default value of Boolean is false. Solidity supports all commonly used Boolean logic. 
The language, however, does not support the translation of boolean data types into integers.

4. Signed Integers
   
A signed integer is used to store positive/negative values in smart contracts and is usually declared using the “int” keyword. Abbreviated from “int256”, it takes up to 32 bytes of storage by default. If you choose to reduce the byte storage, you can specify the number of bits you want each integer to take up (int64, int8, etc.). It is important that you classify the number of bits in steps of 8!

6. Unsigned Integers
   
Unsigned integers in Solidity are used to store non-negative values (0 and above). Declared by using the keyword “uint,” Unsigned Integers also take up to 32 bytes of storage by default. Just like signed integers, you can specify the storage unsigned integers can take by specifying the number of bits (in steps of 8) that can be allocated to them.

8. Bytes
   
The Byte data type points to 8-bit signed integers. The Byte value type facilitates data storage in binary values (1s and 0s). The default value of a byte type is 0x00. 

2) **Reference Types Solidity**
   
Reference type values don’t directly store values – but rather store them by referring to the address of the data’s location, without sharing it directly. The location of the data plays an important role in the amount of gas used in each transaction. Not optimizing data locations properly negatively impacts the performance of smart contracts. 
Solidity uses reference types in a unique manner – each reference variable points the users towards the location of a value data type. Two different variables could point back to the same storage location without one variable affecting the other. Some of the popular examples of reference data types are given below. 

1. Arrays
   
Arrays are one of the most important Solidity data types. Arrays are a collection of variables – each variable containing a unique index. This unique index can help in finding and retrieving a specific variable. The size of the array defines whether it’s fixed or dynamic.
An array stores different types of data and enables simplifying varied processes. The unique index location could help in retrieving a specifically requested variable. 

3. Array Members
   
Array members are usually defined in terms of length (which, in turn, determines the number of elements in one array). You can set the length using array members to facilitate size adjustments in a dynamically sized array. 
The two main tasks by Array Members are “Push” and “Pop.” The push task usually uses a member of a dynamic array and adds an element to the last position, while the pop task removes an element from the last position on the dynamic array.

3. Byte Arrays
   
Byte arrays are specific types of dynamically sized arrays that hold a collection of bytes together. Do not confuse byte arrays with byte value types  – the byte value type stores signed integers in a binary format, while byte arrays hold these bytes to serve different use cases. 

5. String Arrays
   
Dynamic arrays with unique restrictions are called String arrays within Solidity. The string array generally features characters enclosed within single/double quotes. 

7. Structs
   
Struct allows you to create your own data type by combining different variables of value type and reference type in a pre-defined structure.

9. Mapping
    
Just like hashable in other programming languages, Mapping is the most commonly used data type in the Solidity programming language. It stores the data in the form of key-value pairs, enabling you to retrieve the value using the supplied key. 
The Byte data type points to 8-bit signed integers. The Byte value type facilitates data storage in binary values (1s and 0s). The default value of a byte type is 0x00. 

