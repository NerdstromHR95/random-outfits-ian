var path = require('path');
var src = path.join(__dirname, '/client/src');
var dist = path.join(__dirname, '/public/dist');

module.exports = {
  entry: `${src}/index.jsx`,
  output: {
    filename: 'bundle.js',
    path: dist
  },
  module: {
    loaders: [
      {
        test: /\.jsx?/,
        include: src,
        loader: 'babel-loader',
        query: {
          presets: ['react', 'es2015']
        }
      }
    ]
  }
};
