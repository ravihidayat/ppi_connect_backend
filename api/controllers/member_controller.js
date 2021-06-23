const memberModel = require('../models/member_model')
const express = require('express')
const router = express.Router()
const bcrypt = require('bcrypt')

router.get('/', async (req, res, next) => {
    try {
        const result = await memberModel.get()
        res.json(result)   
    } catch (error) {
        console.log(error)
    }
})

router.get('/:id', async (req, res, next) => {
    try {
        const result = await memberModel.getByMatrixNumber(req.params.id)
        res.json(result)   
    } catch (error) {
        console.log(error)
    }
})

router.get('/auth/:email/:password', async (req, res, next) => {
    try {
        const result = await memberModel.getByAuth(req.params.email)
        bcrypt.compare(req.params.password, result['password'], function(error, result){
            if(result == true) res.json('can')
            else return res.json('cant')
        })
        // res.json(result['password'])
    } catch (error) {
        console.log(error)
    }
})

module.exports = router