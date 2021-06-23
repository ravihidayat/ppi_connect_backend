const eventModel = require('../models/event_models')
const express = require('express')
const router = express.Router()

router.get('/', async (req, res, next) => {
    try {
        const result = await eventModel.get()
        res.json(result)   
    } catch (error) {
        console.log(error)
    }
})

router.get('/:id', async (req, res, next) => {
    try {
        const result =  await eventModel.getEventById(req.params.id)
        res.json(result)
    } catch (error) {
        console.log(error)   
    }
})

module.exports = router