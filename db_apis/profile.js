const database = require('../services/database.js');
const baseQuery = `SELECT * FROM KONTO INNER JOIN TYP_KONTA ON KONTO.ID_TYPU_KONTA = TYP_KONTA.ID_TYPU_KONTA WHERE `
    
function toLower(string){
	return string.toLowerCase();
}
	
async function find(req){
    let query = baseQuery;
    const binds = {};
	console.log('profile db_apis context = '+Object.values(req.session.ID_KONTA)[0]);
    if(req.session.ID_KONTA){
			binds.Login = Object.values(req.session.ID_KONTA)[0];
			console.log('binds db_apis context = '+binds.Login);
            query += `KONTO.ID_KONTA = :Login`; 
        }
		
	const result = await database.simpleExecute(query, binds);
	if(result.rows[0] == null){
		return null;
	}
    return result.rows;
}

module.exports.find = find;