//db_apis
const database = require('../services/database.js');
const baseQuery = `SELECT KONTO.ID_KONTA FROM KONTO WHERE `
const taskpriorityid = require('../db_apis/taskPriorityID.js');
const taskactivity = require('../db_apis/taskActivity.js');
const taskdata = require('../db_apis/taskData.js');
    
function toLower(string){
	return string.toLowerCase();
}
	
async function insert(context){
    let query = baseQuery;
    const binds = {};
	binds.taskUserName = context.taskUserName;
	binds.taskUserSurname = context.taskUserSurname;
	query += `(KONTO.IMIE = :taskUserName AND KONTO.NAZWISKO = :taskUserSurname)`;
	const result = await database.simpleExecute(query, binds);
	context.ID_KONTA = result.rows[0]
	if(context.ID_KONTA == null){
		return "User not found";
	}
	console.log("USER FOUND");
	context.taskPriorityID = await taskpriorityid.find(context);
	console.log("PRIORITY ID FOUND");
	var taskActivitySuccess = await taskactivity.insert(context);
	if(taskActivitySuccess != "Success"){
		return("Could not add activity");
	}
	var taskDataSuccess = await taskdata.insert(context);
	if(taskDataSuccess != "Success"){
		return("Could not add task");
	}
	
    return "Success";
}

module.exports.insert = insert;