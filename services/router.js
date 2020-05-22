const express = require('express');
const router = new express.Router();
const session = require('express-session');
const employees = require('../controllers/employees.js');
const mock = require('../controllers/mock.js');
const login = require('../controllers/login.js');
const profile = require('../controllers/profile.js');
const app = express();

router.use(session({ secret: 'keyboard cat', cookie: { maxAge: 60000 }}));

router.route('/employees/:id?')
  .get(employees.get);

router.route('/publications/:idAccount?')
	.get(mock.publications);

router.route('/login')
	.post(login.post);
	
router.route('/profile')
	.get(profile.get);

module.exports = router;