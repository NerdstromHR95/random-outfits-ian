const mysql = require('mysql');
const Config = require('./config.js');

const connection = mysql.createConnection(Config);

connection.connect(err => {
  if (err) {
    console.log(err);
    return
  }
  console.log('connected to db');
});

// let getProductInfo = function(productId, cb) {
//   connection.query(`SELECT * FROM products WHERE id LIKE ${productId}`, (err, info) => {
//     if (err) {
//       cb(err, null);
//     } else if (info !== null) {
//       cb(null, info);
//     }
//   })
// }

let getAllProductsOfStyle = function(style, cb) {
  connection.query(`SELECT * FROM products WHERE style LIKE ${style}`, (err, products) => {
    if(err) {
      cb(err, null);
      console.log(err);
      console.log('DB NOT WORKING');
    } else if (products !== null) {
      cb(null, products);
    }
  })
  
}

// module.exports.getProductInfo = getProductInfo;
module.exports.getAllProductsOfStyle = getAllProductsOfStyle;
