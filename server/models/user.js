const mongoose = require('mongoose');

const userSchema = mongoose.Schema({
    name : {
        type: String,
        required : true,
        trim : true
    },
    email :{
        type : String, 
        required : true,
        trip : true,
        validate: {
            validator : (value) => {
                const re =
                /^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
                return value.match(re);
            },
            message : "Please enter a valid email address."
        },
        
    },
    password : {
        required : true,
        type : String,
        valdate: {
            validator : (value) => {
                
                return value.length > 8;
            },
            message : "Please enter at least 8 character in the password"
        },
    },
    address : {
        type : String, 
        default : "",

    },
    type : {
        type : String, 
        default : 'user'
    }

});
const User = mongoose.model("User", userSchema);
module.exports = User;