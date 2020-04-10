var express = require("express");
var app = express();
var bodyParser = require('body-parser')

const logingStatus = {
	LOGED: 'loged',
	ERROR: 'wrong login/password'
}

app.use(bodyParser.urlencoded({ extended: true }))
app.use(bodyParser.json())

app.post('/login', function(req, res, next) {
	var request = req.body;
	var login = request.login;
	var password = request.password
	if ( login && password) {
		if ( password == "haslo" ){
			res.json({
				'status': logingStatus.LOGED,
				'userId': 1
			});
		} else {
			res.json({
				'status': logingStatus.ERROR
			})
		}
	} else {
		res.json({
			'status': "wrong rest request"
		});
	}
	
});

app.listen(3000, () => {
 console.log("Server running on port 3000");
});