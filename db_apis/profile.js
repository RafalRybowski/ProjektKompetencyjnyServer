const database = require('../services/database.js');
const baseQuery = `SELECT * FROM Konto WHERE  `
    
function toLower(string){
	return string.toLowerCase();
}
	
async function find(req){
    let query = baseQuery;
    const binds = {};
	console.log('profile db_apis context = '+req.session.ID_KONTA);
    if(req.session.ID_KONTA){
			binds.Login = req.session.ID_KONTA;
            query += `KONTO.ID_KONTA = :Login`; 
        }
    
    const result = await database.simpleExecute(query, binds);
    return result.rows;
}

module.exports.find = find;