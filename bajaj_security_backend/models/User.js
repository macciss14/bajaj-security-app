const mongoose = require('mongoose');

// Define User Schema
const UserSchema = new mongoose.Schema({
    name: { type: String, required: true },
    email: { type: String, required: true, unique: true },
    phone: { type: String, required: true },
    password: { type: String, required: true },
});

// Create and export User model
module.exports = mongoose.model('User', UserSchema);
