//controller
const publications = require('../db_apis/publications.js');
const pubAuthors = require('../db_apis/pubAuthors.js');

async function get(req, res, next){
	try{
		if(req.session.ID_KONTA){
			var searchPub = req.query.searchPub;
			let obj = [];
			if(!searchPub){
				searchPub = '';
			}
			console.log('publications searchPub = '+searchPub);	
			const rows = await publications.find(searchPub);
			if (!rows) {
					res.status(200).json(rows);
			}
			else{
				var i=0;
				while(rows[i]){
					var ID = rows[i] && rows[i].ID_PUBLIKACJI;
					Author = await pubAuthors.find(ID);
					console.log('rowsAuthor = '+ID);
					Pub = rows[i];
					obj[i] = {Pub, Author};
					i++;
				}
			}
			//const rowsAuthor = await pubAuthors.find(rows);
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