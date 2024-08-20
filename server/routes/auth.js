const express = require('express');
const User = require('../models/user');

const authRouter = express.Router();

authRouter.post('/api/signup', async (request, response) => {
    try {
        const { name, email, profilePic } = req.body;

        // check if user already exists
        let user = await User.findOne({ email: email })
        if (!user) {
            user = new User({
                name: name,
                email: email,
                profilePic: profilePic,
            })

            user = await user.save()
        }
        // store data

        response.json(user)
    } catch (e) {

    }
})

module.exports = authRouter;