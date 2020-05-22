const profile = require('../db_apis/profile.js');
const profilePub = require('../db_apis/profilePub.js');

async function get(req, res, next){
	try{
		if(req.session.ID_KONTA){
			console.log('profile controllers context = '+Object.values(req.session.ID_KONTA));	
			const rows = await profile.find(req);
			if (rows) {
				if (rows.length != 1) {
					res.status(404).end();
				}
			}
			const rowProfile = rows[0];
			const rowsPub = await profilePub.find(req);
			if (rowsPub){
				let obj = {rowProfile, rowsPub};
				res.status(200).json(obj);
			}
			else{
				res.status(404).end();
			}
		}
		else{
			res.status(404).end();
		}
	} catch (err) {
		next(err);
	}
}

module.exports.get = get;