pragma solidity >=0.8.0;

contract MappingExample {

    // Define a structure 'Student'
    struct Student {
        string name;
        string subject;
        uint8 marks;
    }
      
    // Create a mapping 'result' that maps an address to a Student structure
    mapping (address => Student) result;

    // Create a dynamic array 'studentAddresses' to store the addresses
    address[] public studentAddresses;

    // Function to add values to the mapping
    function addStudent(address _address, string memory _name, string memory _subject, uint8 _marks) public {
        Student memory student = Student({
            name: _name,
            subject: _subject,
            marks: _marks
        });

        result[_address] = student;
        studentAddresses.push(_address);
    }

    // Function to retrieve values from the mapping
    function getStudent(address _address) public view returns (string memory, string memory, uint8) {
        return (result[_address].name, result[_address].subject, result[_address].marks);
    }

    // Function to return all student addresses
    function getStudentAddresses() public view returns (address[] memory) {
        return studentAddresses;
    }

    // Function to count the number of students
    function countStudents() public view returns (uint) {
        return studentAddresses.length;
    }
}
