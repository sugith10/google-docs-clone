const express = require("express")
const mongoose = require("mongoose")
const authRouter = require("./routes/auth")

const PORT = process.env.PORT | 3001

const app = express()

app.use(authRouter)

const DB = "mongodb+srv://sugith:R3FUD6uOWBjgxKQ0@cluster0.lit0hj1.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0";

mongoose.connect(DB).then(() => {
    console.log("Connected to MongoDB")
}).catch((err) => {
    console.log(err)
})

app.listen(PORT, "0.0.0.0", () => {
    console.log(`Connected at port ${PORT}`);
})