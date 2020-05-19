const database = require('../services/database.js');
const baseQuery = `SELECT KONTO.ID_KONTA FROM Konto INNER JOIN Login ON LOGIN.ID_KONTA=KONTO.ID_KONTA `
    
async function find(context){
    let query = baseQuery;
    const binds = {};
    
    
    if(context.login && context.pswrd){
            binds.Login = context.login;
            binds.PsWrd = context.pswrd;
            query += `where Login.Login = :Login
            AND Login.Haslo = :PsWrd`;
        }
        
    const result = await database.simpleExecute(query, binds);
    return result.rows[0].ID_KONTA;
}

module.exports.find = find;