const express = require('express');
const bodyParser = require('body-parser');
const db = require('../db/index.js');

const app = express();
const PORT = 3003;

// app.use(bodyParser.json());
// app.use(bodyParser.urlencoded({extended: true}));



app.get(`/gender/:gender/style/:style`, function(req, res) {
  const genderName = JSON.stringify(req.params.gender);
  const styleName = JSON.stringify(req.params.style);
  db.getAllProductsOfStyle(genderName, styleName, (err, products) => {
    if (err) {
      res.status(500)
      res.send();
    } else {
      res.status(200).send(products);

      // res.send(products);
    }
  })
})


app.get(`/products/:productId`, function(req, res) {
  const productId = req.params.productId;
  db.getProductInfo(productId, (err, info) => {
    if (err) {
      res.status(500);
      res.end();
    } else {
      res.status(200);
      res.send(info);
    }
  })
});

app.use('/:productId', express.static(__dirname + '/../public/dist'));

app.listen(3003);