async function publications(req, res, next) {
  try {
    const context = {};

    context.id = parseInt(req.params.id, 10);

    // const rows = await employees.find(context);

    if (req.params.id) {
      if (rows.length === 1) {
        res.status(200).json(rows[0]);
      } else {
        res.status(404).end();
      }
    } else {
      res.status(200).json([
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
    }
  } catch (err) {
    next(err);
  }
}

module.exports.publications = publications;

async function login(req, res, next) {
   res.status(200).json({
        "status": "SUCCESS",
        'userId': 1,
        'degree': 'tytul',
        'name': 'imie',
        'surname': 'nazwisko',
        'position': 'pozycja',
        'phone': '606707808',
        'image': 'a.jpg'
      })
}


module.exports.login = login;