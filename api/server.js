require('dotenv').config()

const db = require("./database")
// import db from "@api/database"

const port = process.env.PORT || 8000
const express = require('express')
const memberRouter = require('./controllers/member_controller')
const eventRouter = require('./controllers/event_controller')
const app = express()

app.use(express.json())

app.get('/', (req, res, next) => {
    res.send("Check out /member to get members data")
})

app.use('/member', memberRouter)
app.use('/event', eventRouter)

app.listen(port, () => {
    console.log(`Server is running on port ${port}`)
})