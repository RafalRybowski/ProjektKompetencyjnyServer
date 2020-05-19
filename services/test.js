const database = requires('../services/database.js');
const baseQuery = 'SELECT * FROM COUNTRIES';
async function get(req, res, next){
	try{
		const context = {};
		const binds = {};
		let query = baseQuery;
		context.id = parseInt(req.params.id, 10);
		if(context.id){
			binds.REGIONID = context.id;
			query += '\nwhere REGION_ID =: REGION_ID';
		}
		
		const result = await database.simpleExecute(query,binds);
		res.status(200).json(result.rows);
	}catch(err){
		next(err);
	}
}

module.exports.get = get;
