require('dotenv').config();
const mongoose = require ('mongoose');

async function connect(){

    await mongoose.connect(process.env.DATABASE_URL, {
        useUnifiedTopology: true,
        useNewUrlParser:true
    });
    console.log('Database: Connected')
};

module.exports = { connect };