const mysql = require('mysql');

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'yourusername',
  password: 'yourpassword',
  database: 'yourdatabase'
});

const product = {
  id: 1,
  name: 'Product 1',
  value: 10.99,
  status: 'active'
};

const company = {
  id: 1,
  cnpj: '12345678901234',
  status: 'active'
};

connection.connect();
connection.query('INSERT INTO products SET ?', product, (err, res) => {
  if (err) throw err;
  console.log(`Product ${product.name} added!`);
});
connection.query('INSERT INTO companies SET ?', company, (err, res) => {
  if (err) throw err;
  console.log(`Company ${company.cnpj} added!`);
});
connection.end();