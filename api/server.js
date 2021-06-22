require('dotenv').config()

const db = require("./database")
// import db from "@api/database"

const port = process.env.PORT || 8000
const express = require('express')
const app = express()

app.use(express.json())

app.get('/', (req, res, next) => {
    res.send("Check out /member to get members data")
})

app.get('/member', async (req, res, next) => {
    const result = await db.query("SELECT * from member")
    res.json(result)
})

app.get('/event', async (req, res, next) => {
    const result = await db.query("SELECT * from event")
    res.json(result)
})

app.listen(port, () => {
    console.log(`Server is running on port ${port}`)
})