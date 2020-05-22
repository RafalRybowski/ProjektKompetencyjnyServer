const database = require('../services/database.js');
const baseQuery = `SELECT TYTUL_PUBLIKACJI, DATA_PUBLIKACJI, ISBN, MIEJSCE_WYSTAPIENIA FROM PUBLIKACJA JOIN AUTORZY ON AUTORZY.ID_PUBLIKACJI = PUBLIKACJA.ID_PUBLIKACJI 
JOIN KONTO ON  AUTORZY.ID_KONTA = KONTO.ID_KONTA WHERE `
    
function toLower(string){
	return string.toLowerCase();
}
	
async function find(req){
    let query = baseQuery;
    const binds = {};
	console.log('profilePub db_apis context = '+Object.values(req.session.ID_KONTA)[0]);
    if(req.session.ID_KONTA){
			binds.Login = Object.values(req.session.ID_KONTA)[0];
			console.log('binds db_apis context = '+binds.Login);
            query += `KONTO.ID_KONTA = :Login`; 
        }
		
	const result = await database.simpleExecute(query, binds);
    return result.rows;
}

module.exports.find = find;