const database = require('../services/database.js');
const baseQuery = `SELECT * FROM TASK JOIN ZADANIE ON TASK.ID_TASKA = ZADANIE.ID_TASKA`
    
function toLower(string){
	return string.toLowerCase();
}
	
async function find(req, searchTask){
    let query = baseQuery;
    const binds = {};
	console.log('account type db_apis context = '+Object.values(req.session.ID_TYPU_KONTA)[0]);
    if(req.session.ID_KONTA){
		if(Object.values(req.session.ID_TYPU_KONTA)[0] == 1 || Object.values(req.session.ID_TYPU_KONTA)[0] == 2){
			console.log('Admin access');
			binds.Search = searchTask;
			binds.Search = toLower(binds.Search);
			binds.Search += `%`;
			query += ` WHERE LOWER(TASK.TYTUL_TASKA) LIKE :Search`;
        }
		else{
			binds.Task = Object.values(req.session.ID_KONTA)[0];
			binds.Search = searchTask;
			binds.Search = toLower(binds.Search);
			binds.Search += `%`;
            query += ` WHERE ZADANIE.ID_KONTA = :Task AND LOWER(TASK.TYTUL_TASKA) LIKE :Search`; 
		}
	}	
	const result = await database.simpleExecute(query, binds);
	if(result.rows[0] == null){
		return null;
	}
	//console.log(result.rows);
    return result.rows;
}

module.exports.find = find;