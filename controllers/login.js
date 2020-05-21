const login = require('../db_apis/login.js');

async function post(req, res, next){
	try{
		const context = {};
		
		context.login = req.query.login;
		context.pswrd = req.query.pswrd;
		
		//console.log(context.login);
		//console.log(context.haslo);
		const ID = await login.find(context);
		if (context.login) {
			if (ID) {
				req.session.loggedin = true;
				req.session.ID_KONTA = ID;
				console.log(req.session.ID_KONTA);
				//res.redirect('/profile/:req');
			} else {
				res.status(404).end();
			}
		}
		if(req.session.loggedin == true){
			res.status(200).json(req.session.ID_KONTA);
		}
	} catch (err) {
		next(err);
	}
}
module.exports.post = post;