const database = require('../services/database.js');
const baseQuery = `SELECT KONTO.IMIE, KONTO.NAZWISKO FROM KONTO JOIN ZADANIE ON KONTO.ID_KONTA = ZADANIE.ID_KONTA WHERE ZADANIE.ID_TASKA =  `
    
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
            query += `:Task`; 
        }
		
	const result = await database.simpleExecute(query, binds);
	if(result.rows[0] == null){
		return null;
	}
    return result.rows;
}

module.exports.find = find;