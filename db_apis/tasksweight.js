const database = require('../services/database.js');
const baseQuery = `SELECT WAGA FROM WAGA_ZADANIA WHERE `
    
function toLower(string){
	return string.toLowerCase();
}
	
async function find(context){
    let query = baseQuery;
    const binds = {};
	console.log('profile db_apis context = '+Object.values(context)[0]);
    if(context){
			binds.Task = Object.values(context)[0];
			console.log('tasks db_apis bind = '+binds.Task);
            query += `WAGA_ZADANIA.ID_WAGI_ZADANIA = :Task`; 
        }
		
	const result = await database.simpleExecute(query, binds);
	if(result.rows[0] == null){
		return null;
	}
    return result.rows;
}

module.exports.find = find;