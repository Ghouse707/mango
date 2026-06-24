db.students.insertMany([
    { _id: 1, name: "Rani", age: 20, marks: 80 },
    { _id: 2, name: "Abi", age: 20, marks: 70 },
    { _id: 3, name: "Hema", age: 20, marks: 40 },
    { _id: 4, name: "Ram", age: 20, marks: 75 },
    { _id: 5, name: "Maggie", age: 20, marks: 90 }
])

// Greater than
db.students.find({
    marks: { $gt: 75 }
})

// Less than
db.students.find({
    marks: { $lt: 75 }
})

// Equal to
db.students.find({
    marks: { $eq: 90 }
})

// Not equal
db.students.find({
    marks: { $ne: 70 }
})

// In
db.students.find({
    marks: { $in: [80, 90] }
})

// AND
db.students.find({
    $and: [
        { marks: { $gt: 80 } },
        { age: { $lt: 25 } }
    ]
})

// OR
db.students.find({
    $or: [
        { marks: { $gt: 80 } },
        { age: { $lt: 20 } }
    ]
})


db.places.insertMany([
    {
        name: "Park",
        location: {
            type: "Point",
            coordinates: [77.59, 12.97]
        }
    },
    {
        name: "Mall",
        location: {
            type: "Point",
            coordinates: [77.60, 12.98]
        }
    },
    {
        name: "Hospital",
        location: {
            type: "Point",
            coordinates: [77.58, 13.46]
        }
    }
])

// Create index
db.places.createIndex({
    location: "2dsphere"
})

// Near operator
db.places.find({
    location: {
        $near: {
            $geometry: {
                type: "Point",
                coordinates: [77.59, 12.97]
            },
            $maxDistance: 5000
        }
    }
})


db.devices.insertMany([
    { device: "Sensor1", status: 5 },
    { device: "Sensor2", status: 3 },
    { device: "Sensor3", status: 1 },
    { device: "Sensor4", status: 4 }
])

// Bit all set
db.devices.find({
    status: { $bitsAllSet: [0] }
})

// Bit any set
db.devices.find({
    status: { $bitsAnySet: [0, 1] }
})

// Bit all clear
db.devices.find({
    status: { $bitsAllClear: [1] }
})
