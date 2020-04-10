var express = require("express");
var app = express();
var bodyParser = require('body-parser')

app.use(bodyParser.urlencoded({ extended: true }))
app.use(bodyParser.json())

app.post('/login', function(req, res, next) {
	var request = req.body;
	console.log(request.username,  request.password);
	res.json({
		'status': "username",
		'password': "a"
	})
});

app.listen(3000, () => {
 console.log("Server running on port 3000");
});