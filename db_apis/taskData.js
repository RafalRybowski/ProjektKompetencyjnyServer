const database = require('../services/database.js');
const baseQuery = `INSERT INTO TASK VALUES `
    
async function insert(context){
    let query = baseQuery;
    const binds = {};
    
    if(context){
            binds.taskDate = context.taskDate;
			console.log("Task Date: "+binds.taskDate);
			binds.taskDue = context.taskDue;
			console.log("Task Due: "+binds.taskDue);
			binds.taskName = context.taskName;
			console.log("Task Name: "+binds.taskName);
			binds.taskDesc = context.taskDesc;
			console.log("Task Desc: "+binds.taskDesc);
            query += `(PRIM_ID_TASKA_SEQ.nextval, TO_DATE(:taskDate,'YYYY-MM-DD'), TO_DATE(:taskDue,'YYYY-MM-DD'), :taskName, :taskDesc, 1)`;
        }
        
    await database.simpleExecute(query, binds);
    return "Success";
}

module.exports.insert = insert;