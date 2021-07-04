const memberModel = require('../models/member_model')
const express = require('express')
const router = express.Router()
const bcrypt = require('bcrypt')

//For all or auth
router.post('/', async (req, res, next) => {
    try {
        if(req.body['email'] != null && req.body['password'] != null){
            const result = await memberModel.getByAuth(req.body['email'])
            if(result == null) return res.json({})
            var hash = result['password']
            hash = hash.replace(/^\$2y(.+)$/i, '$2a$1')
            bcrypt.compare(req.body['password'], hash, function(error, compRes){
                if(compRes) res.json(result)
                else return res.json({})
            })
        }else{
            const result = await memberModel.get()
            res.json(result)
        }
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

router.post('/coba', (req, res, next) => {
    // var data = JSON.parse(req.body);
    console.log(req.body['email'], req.body['password']); 
    // console.log(req.body);
})

module.exports = router