const express = require('express');
const bodyParser = require('body-parser');
const db = require('../db/index.js');

const app = express();
const PORT = 3003;

// app.use(bodyParser.json());
// app.use(bodyParser.urlencoded({extended: true}));


app.get(`/style/:style`, function(req, res) {
  const styleName = JSON.stringify(req.params.style);
  console.log(styleName);
  db.getAllProductsOfStyle(styleName, (err, products) => {
    if (err) {
      res.status(500);
      res.send();
    } else {
      console.log(products);
      res.status(200).send(products);

      // res.send(products);
    }
  })
})


// app.get(`/:productId`, function(req, res) {
//   db.getProductInfo(productId, (err, info) => {
//     if (err) {
//       res.status(500);
//       res.end();
//     } else {
//       res.status(200);
//       res.send(info);
//     }
//   })
// });

app.use(express.static(__dirname + '/../public/dist'));

app.listen(3003);