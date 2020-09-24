pragma solidity ^0.5.16;

contract TodoList {
    // Keep track of number  of to do
    uint public taskCount = 0;

    struct Task {
        uint id;
        string content;
        bool completed;
    }

    constructor() public {
        createTask("My first task");
        createTask("Exercise");
    }
    mapping(uint => Task) public tasks;

    // to add task to mapping
    function createTask(string memory content) public {
        taskCount ++;
        tasks[taskCount] = Task(taskCount, content, false);
    }
}