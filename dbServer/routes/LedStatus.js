const { Router } = require('express');
const router = Router();

const Data = require('../models/Data');


router.get('/api/led', async (req, res) => {
    const LedState = await Data.find();
    res.json({LedState});
});



router.post('/api/led/updateOn', async (req, res) => {
    const id = "5edd767c1acb3612a8421331";
    const data = await Data.updateOne({_id : id}, {LedState:"ON"})
    res.json({data})
});

router.post('/api/led/updateOff', async (req, res) => {
    const id = "5edd767c1acb3612a8421331";     //tienes que poner el id del dato que tienes tu
    const data = await Data.updateOne({_id : id}, {LedState:"OFF"})
    res.json({data})
});

module.exports = router;