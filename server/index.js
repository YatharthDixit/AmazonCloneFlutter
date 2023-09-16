//Import from Packages
const express = require("express");
const mongoose = require("mongoose");
// const bodyParser = require("body-parser");


//Import from Other Files
const authRouter = require("./routes/auth");
const adminRouter = require("./routes/admin")
const productRouter = require("./routes/product")



//Initialization
const app = express();
const PORT = process.env.PORT || 3000
const HOST = process.env.HOST || "0.0.0.0"
const DB = "mongodb+srv://yatharthdixit:yathdi1234@cluster0.qozikzw.mongodb.net/?retryWrites=true&w=majority";

//Middleware
// app.use(bodyParser.urlencoded())
app.use(express.json());
app.use(authRouter);
app.use(adminRouter);
app.use(productRouter);
 
//Connections
mongoose.connect(DB).then(() => { 

}).catch(e => {
    console.log(e);
});

//Creating an API.



app.listen(PORT, HOST, function(){
    console.log(`Connected at ${PORT} `);
})

