const {Schema, model }= require('mongoose');

const ledSchema = new Schema({
    LedState: String
});

module.exports = model('Data', ledSchema);