//db_apis
const database = require('../services/database.js');
const baseQuery = `SELECT * FROM PUBLIKACJA WHERE `
    
function toLower(string){
	return string.toLowerCase();
}
	
async function find(searchPub){
    let query = baseQuery;
    const binds = {};
	console.log('searchPub = '+searchPub);
    if(searchPub != null){
			binds.Title = searchPub;
			binds.Title = toLower(binds.Title);
			binds.Title += `%`;
			console.log('binds db_apis Title = '+binds.Title);
            query += `LOWER(TYTUL_PUBLIKACJI) LIKE :Title`; 
        }
		
	const result = await database.simpleExecute(query, binds);
	if(result.rows[0] == null){
		return null;
	}
    return result.rows;
}

module.exports.find = find;