const eventModel = require('../models/event_models')
const express = require('express')
const router = express.Router()

router.get('/', async (req, res, next) => {
    try {
        var result = await eventModel.get()
        for(let i = 0; i < result.length; i++){
            result[i]['id'] = result[i]['event_id']
        }
        res.json(result)
    } catch (error) {
        console.log(error)
    }
})

router.get('/:id', async (req, res, next) => {
    try {
        var result =  await eventModel.getEventById(req.params.id)
        result['id'] = result['event_id']
        res.json(result)
    } catch (error) {
        console.log(error)   
    }
})

router.post('/', async (req, res, next) => {
    try {
        const createResult = await eventModel.create(req.body)
        if(!createResult.affectedRows) res.sendStatus(409)

        const result = await eventModel.getEventById(createResult.insertId)
        res.status(201).json(result)
    } catch (error) {
        console.log(error)
    }
})

router.delete('/:id', async (req, res, next) => {
    try {
        const result = await eventModel.delete(req.params.id)
        if (!result.affectedRows) return res.sendStatus(404)
        res.sendStatus(200)
    }
    catch (e) {
        console.log(e)
    }
})

router.patch('/:id', async (req, res, next) => {
    try {
        const updateResult = await eventModel.update(req.params.id, req.body)
        if (!updateResult.affectedRows) return res.sendStatus(404)

        const result = await eventModel.getById(req.params.id)
        res.json(result)
    }
    catch (e) {
        console.log(e)
    }
})

module.exports = router