const express = require('express');
const router = new express.Router();
const employees = require('../controllers/employees.js');
const mock = require('../controllers/mock.js');

router.route('/employees/:id?')
  .get(employees.get);

router.route('/publications/:idAccount?')
	.get(mock.publications);

router.route('/login')
	.post(mock.login);

module.exports = router;