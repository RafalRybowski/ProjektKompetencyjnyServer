const database = require('../services/database.js');
const baseQuery = `INSERT INTO ZADANIE VALUES `
    
async function insert(context){
    let query = baseQuery;
    const binds = {};
    
    if(context){
            binds.ID_KONTA = Object.values(context.ID_KONTA)[0];
			console.log("ID_KONTA :"+binds.ID_KONTA);
			binds.taskPriorityID = Object.values(context.taskPriorityID)[0];
			console.log("taskPriorityID :"+binds.taskPriorityID);
            query += `(ID_ZADANIA_SEQ.nextval, :ID_KONTA, ID_TASKA_SEQ.nextval, :taskPriorityID)`;
        }    
    await database.simpleExecute(query, binds);
    return "Success";
}

module.exports.insert = insert;