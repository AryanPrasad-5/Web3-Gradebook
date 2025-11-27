// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Gradebook {

    // Mapping: student name => grade
    mapping(string => uint256) public grades;

    // Event for logging when a grade is added or updated
    event GradeUpdated(string student, uint256 grade);

    // Function to add or update a student's grade
    function setGrade(string memory student, uint256 grade) public {
        grades[student] = grade;
        emit GradeUpdated(student, grade);
    }

    // Function to get a student's grade
    function getGrade(string memory student) public view returns (uint256) {
        return grades[student];
    }
}
               
