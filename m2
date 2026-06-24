db.employee.insertMany([
    {
        name: "A",
        age: 30,
        salary: 50000
    },
    {
        name: "B",
        age: 25,
        salary: 55000
    },
    {
        name: "C",
        age: 23,
        salary: 60000
    },
    {
        name: "D",
        age: 24,
        salary: 65000
    },
    {
        name: "E",
        age: 21,
        salary: 58000
    },
    {
        name: "F",
        age: 23,
        salary: 60000
    }
])

// Display only name and salary
db.employee.find(
    {},
    {
        name: 1,
        salary: 1,
        _id: 0
    }
)

// First 5 documents
db.employee.find(
    {},
    {
        name: 1,
        salary: 1,
        _id: 0
    }
).limit(5)
