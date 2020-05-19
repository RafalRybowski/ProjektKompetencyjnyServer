const login = require('../db_apis/login.js');

async function post(req, res, next){
	try{
		const context = {};
		
		context.login = req.query.login;
		context.pswrd = req.query.pswrd;
		
		//console.log(context.login);
		//console.log(context.haslo);
		const rows = await login.find(context);
		if (context.login) {
			if (rows) {
				req.session.loggedin = true;
				req.session.ID_KONTA = rows;
				console.log(req.session.ID_KONTA);
				res.redirect('/profile/:req');
			} else {
				res.status(404).end();
			}
		}
	} catch (err) {
		next(err);
	}
}
module.exports.post = post;