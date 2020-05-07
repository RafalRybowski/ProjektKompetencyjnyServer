var express = require("express");
var app = express();
var bodyParser = require('body-parser')

const logingStatus = {
	LOGED: 'SUCCESS',
	ERROR: 'ERROR'
}

const oracledb = require('oracledb');

async function run() {

  let connection;

  try {
    connection = await oracledb.getConnection(  {
      user          : "hr",
      password      : "Epiph0n31!1",
      connectString : "localhost/hw18"
    });

    const result = await connection.execute(
      `SELECT manager_id, department_id, department_name
       FROM departments
       WHERE manager_id = :id`,
      [103],  // bind value for :id
    );
    console.log(result.rows);

    app.get

  } catch (err) {
    console.error(err);
  } finally {
    if (connection) {
      try {
        await connection.close();
      } catch (err) {
        console.error(err);
      }
    }
  }

  app.get('/', function(req, res, next){
  	get()
  });
}

async function get() {
	const result = await connection.execute(
      `SELECT manager_id, department_id, department_name
       FROM departments
       WHERE manager_id = :id`,
      [103],  // bind value for :id
    );
    console.log(result.rows);
}

run();

oracledb.outFormat = oracledb.OUT_FORMAT_OBJECT;

app.use(express.static('image'));
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
				'userId': 1,
				'degree': 'tytul',
				'name': 'imie',
				'surname': 'nazwisko',
				'position': 'pozycja',
				'phone': '606707808',
				'image': 'a.jpg'
			});
		} else {
			res.json({
				'status': logingStatus.ERROR
			})
		}
	} else {
		res.json({
			'status': logingStatus.ERROR
		});
	}
	
});

app.get('/publications/:idAccount', function(req, res, next) {
	var login = req.params.idAccount;
	res.json([
			{
		'idPublication': 1,
		'idAuthor': 1,
		'tile': 'tytul1',
		'date': 'imie1',
		'ISBN': 'nazwisko1',
		'place': 'pozycja1',
	},
	{
		'idPublication': 2,
		'idAuthor': 1,
		'tile': 'tytul2',
		'date': 'imie2',
		'ISBN': 'nazwisko2',
		'place': 'pozycja2',
	},
	{
		'idPublication': 3,
		'idAuthor': 1,
		'tile': 'tytul3',
		'date': 'imie3',
		'ISBN': 'nazwisko3',
		'place': 'pozycja3',
	},
	{
		'idPublication': 4,
		'idAuthor': 1,
		'tile': 'tytul4',
		'date': 'imie4',
		'ISBN': 'nazwisko4',
		'place': 'pozycja4',
	}]);
});

app.listen(3000, () => {
 console.log("Server running on port 3000");
});