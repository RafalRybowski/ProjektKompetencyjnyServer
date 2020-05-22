const database = require('../services/database.js');
const baseQuery = `SELECT KONTO.ID_KONTA FROM Konto INNER JOIN Login ON LOGIN.ID_KONTA=KONTO.ID_KONTA `
    
async function find(context){
    let query = baseQuery;
    const binds = {};
    
    
    if(context.login && context.password){
            binds.Login = context.login;
			console.log('binds.login = '+binds.Login);
			binds.LoginEmail = binds.Login + `@edu.p.lodz.pl`
			console.log('binds.LoginEmail = '+binds.LoginEmail);
            binds.PsWrd = context.password;
			console.log('binds.PsWrd = '+binds.PsWrd);
            query += `where (Login.Login = :Login OR Login.Login = :LoginEmail)
            AND Login.Haslo = :PsWrd`;
        }
        
    const result = await database.simpleExecute(query, binds);
	if(result.rows[0] == null){
		return -1;
	}
    return result.rows[0];
}

module.exports.find = find;