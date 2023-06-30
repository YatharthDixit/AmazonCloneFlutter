const jwt = require ('jsonwebtoken');

const auth = async (req, res, next) => {
    try{
        const token = req.header('x-auth-token');
        if(!token) return res.status(401).json({msg: "No Auth token, Access Denied"});
        const isVerified = jwt.verify(token, 'passwordKey');
        if(!isVerified) return res.status(401).json({msg:"Token Verification Failed, Authorization Denied."});
        req.user = isVerified.id;
        req.token = token;
        next();



    }catch(e){
        res.status(500).json({'error': e.message});
    }
}
module.exports = auth;