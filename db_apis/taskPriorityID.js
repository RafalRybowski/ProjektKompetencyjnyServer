const database = require('../services/database.js');
const baseQuery = `SELECT ID_WAGI_ZADANIA FROM WAGA_ZADANIA `;

async function find(context){
    let query = baseQuery;
    const binds = {};
    
    
    if(context){
            binds.taskPriority = context.taskPriority;
            query += `WHERE WAGA = :taskPriority`;
        }  
    const result = await database.simpleExecute(query, binds);
	if(result.rows[0] == null){
		return null;
	}
    return result.rows[0];
}

module.exports.find = find;