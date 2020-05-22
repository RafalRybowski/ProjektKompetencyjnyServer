const login = require('../db_apis/login.js');

async function post(req, res, next){
    try{
        const context = {};
        
        context.login = req.body.login;
        context.password = req.body.password;
		
        const ID = await login.find(context);
        if (context.login && context.password) {
            if (ID) {
                req.session.loggedin = true;
                req.session.ID_KONTA = ID;
                console.log(req.session.ID_KONTA);
            } else {
                res.status(404).end();
            }
        }
		else{
			res.status(404).end();
		}
        if(req.session.loggedin == true){
            res.status(200).json(req.session.ID_KONTA);
        }
    } catch (err) {
        next(err);
    }
}
module.exports.post = post;