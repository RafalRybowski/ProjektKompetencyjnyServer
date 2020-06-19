const profile = require('../db_apis/profile.js');
const profilePub = require('../db_apis/profilePub.js');

async function get(req, res, next){
	try{
		console.log(req.params.id)
		if(req.params.id){
			const rows = await profile.find(req);
			console.log(rows)
			if (rows != null) {
				if (rows.length != 1) {
					res.status(404).end();
				}
			}
			console.log(rows)
			const rowProfile = rows[0];
			const rowsPub = await profilePub.find(req);
			let obj = {rowProfile, rowsPub};
			res.status(200).json(obj);
		
		}
		else{
			res.status(404).end();
		}
	} catch (err) {
		next(err);
	}
}

module.exports.get = get;