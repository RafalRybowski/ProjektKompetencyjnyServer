const profile = require('../db_apis/profile.js');

async function get(req, res, next){
	try{
		if(req.session.loggedin == false){
			res.status(404).end;
		}
		console.log(req.session.ID_KONTA);	
		const rows = await profile.find(req);
		if (rows) {
			if (rows.length == 1) {
				res.status(200).json(rows[0]);
			} else {
				res.status(404).end();
			}
		}
	} catch (err) {
		next(err);
	}
}

module.exports.get = get;