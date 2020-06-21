const database = require('../services/database.js');
const baseQuery = `SELECT NAZWA_STATUSU FROM STATUS_TASKA WHERE `
    
function toLower(string){
	return string.toLowerCase();
}
	
async function find(context){
    let query = baseQuery;
    const binds = {};
	console.log('profile db_apis context = '+context);
    if(context){
			binds.Task = context;
			console.log('tasks db_apis bind = '+binds.Task);
            query += `STATUS_TASKA.ID_STATUSU_TASKA = :Task`; 
        }
		
	const result = await database.simpleExecute(query, binds);
	if(result.rows[0] == null){
		return null;
	}
    return result.rows;
}

module.exports.find = find;