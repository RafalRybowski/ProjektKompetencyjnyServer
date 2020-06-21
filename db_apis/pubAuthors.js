//db_apis
const database = require('../services/database.js');
const baseQuery = `SELECT IMIE, NAZWISKO, TYTUL FROM KONTO LEFT JOIN AUTORZY ON KONTO.ID_KONTA = AUTORZY.ID_KONTA
LEFT JOIN PUBLIKACJA ON AUTORZY.ID_PUBLIKACJI = PUBLIKACJA.ID_PUBLIKACJI WHERE `
    
function toLower(string){
	return string.toLowerCase();
}
	
async function find(ID_PUBLIKACJI){
    let query = baseQuery;
    const binds = {};
	console.log('ID PUBLIKACJI = '+ID_PUBLIKACJI);
    if(ID_PUBLIKACJI != null){
			binds.Publication = ID_PUBLIKACJI;
			console.log('ID_PUBLIKACJI db_apis = '+binds.Publication);
            query += `PUBLIKACJA.ID_PUBLIKACJI = :Publication`; 
        }
		
	const result = await database.simpleExecute(query, binds);
	if(result.rows == null){
		return null;
	}
    return result.rows;
}

module.exports.find = find;