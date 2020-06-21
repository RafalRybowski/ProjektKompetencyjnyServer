//controller
const tasks = require('../db_apis/tasks.js');
const tasksweight = require('../db_apis/tasksweight.js');
const taskstatus = require('../db_apis/taskstatus.js');
const accounttype = require('../db_apis/accounttype.js');
const profilename = require('../db_apis/profilename.js');

async function get(req, res, next){
	try{
		if(req.session.ID_KONTA){
			var searchTask = req.query.searchTask;
			if(!searchTask){
				searchTask = '';
			}
			let obj = [];
			const accountType = await accounttype.find(req);
			console.log("Account type: "+Object.values(accountType)[0]);
			req.session.ID_TYPU_KONTA = accountType;
			const rows = await tasks.find(req, searchTask);
			if (!rows) {
					res.status(200).json(rows);
			}
			else{
				var i=0;
				while(rows[i]){
					var weight = rows[i] && rows[i].ID_WAGI_ZADANIA;
					taskWeight = await tasksweight.find(weight);
					var status = rows[i] && rows[i].ID_STATUSU_TASKA; 
					taskStatus = await taskstatus.find(status);
					var name = rows[i] && rows[i].ID_TASKA;
					profileName = await profilename.find(name);
					task = rows[i];
					obj[i] = {task, taskWeight, taskStatus, profileName};
					i++;
				}
			}
			console.log("TASK TEST");;
			res.status(200).json(obj);
		}
		else{
			res.status(404).end();
		}
	} catch (err) {
		next(err);
	}
}

module.exports.get = get;