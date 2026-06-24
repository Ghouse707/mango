db.students.insertMany([
    {
        _id: 1,
        name: "Ravi",
        marks: [
            { subject: "Maths", score: 85 },
            { subject: "Science", score: 90 },
            { subject: "English", score: 75 }
        ]
    },
    {
        _id: 2,
        name: "Anita",
        marks: [
            { subject: "Maths", score: 88 },
            { subject: "Science", score: 90 },
            { subject: "English", score: 80 }
        ]
    }
])

// elemMatch
db.students.find(
    {
        marks: {
            $elemMatch: {
                subject: "Science",
                score: 90
            }
        }
    },
    {
        name: 1
    }
)

db.orders.insertOne({
    _id: 1,
    items: ["Pen", "Book", "Pencil", "Eraser"]
})

// slice
db.orders.find(
    {},
    {
        items: { $slice: 2 }
    }
)
