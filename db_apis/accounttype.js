//db_apis
const database = require('../services/database.js');
const baseQuery = `SELECT KONTO.ID_TYPU_KONTA FROM KONTO WHERE `
    
function toLower(string){
	return string.toLowerCase();
}
	
async function find(req){
    let query = baseQuery;
    const binds = {};
    if(req.session.ID_KONTA){
			binds.Type = Object.values(req.session.ID_KONTA)[0];
            query += `KONTO.ID_KONTA = :Type`; 
        }
		
	const result = await database.simpleExecute(query, binds);
	if(result.rows[0] == null){
		return null;
	}
    return result.rows[0];
}

module.exports.find = find;