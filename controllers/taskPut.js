//controller
const accounttype = require('../db_apis/accounttype.js');
const taskPut = require('../db_apis/taskPut.js');

async function put(req, res, next){
	try{
		if(req.session.ID_KONTA){
			const accountType = await accounttype.find(req);
			if(Object.values(accountType)[0] != 1 && Object.values(accountType)[0] != 2){
				res.status(403).end();
			}
			const context = {};
			context.taskName = req.body.taskName;
			context.taskDue = req.body.taskDue;
			context.taskDesc = req.body.taskDesc;
			context.taskPriority = req.body.taskPriority;
			context.taskDate = req.body.taskDate;
			context.taskUserName = req.body.taskUserName;
			context.taskUserSurname = req.body.taskUserSurname;
			
			const checkSuccess = await taskPut.insert(context);
			
			res.status(200).json(checkSuccess);
		}
		else{
			res.status(404).end();
		}
	} catch (err) {
		next(err);
	}
}

module.exports.put = put;