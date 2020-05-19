const database = require('../services/database.js');
const baseQuery = `SELECT * FROM Konto WHERE  `
    
function toLower(string){
	return string.toLowerCase();
}
	
async function find(context){
    let query = baseQuery;
    const binds = {};
	console.log('profile db_apis context = '+context);
    if(context){
			binds.Login = context;
            query += `KONTO.ID_KONTA = :Login`;
        }
    
    const result = await database.simpleExecute(query, binds);
    return result.rows;
}

module.exports.find = find;