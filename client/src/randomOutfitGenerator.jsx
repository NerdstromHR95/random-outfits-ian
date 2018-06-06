import React from 'react';
import ReactDOM from 'react-dom';
import OutfitGeneratorList from './components/outfitGeneratorList.jsx';
import axios from 'axios';

class OutfitGenerator extends React.Component {
  constructor(props) {
    super(props);
    
    this.state = {
      style:"casual",
      currentProduct:null,
      outfits:[]
    } 
    this.getProducts = this.getProducts.bind(this);
  }
  
  getProducts(style) {
    axios.get(`http://localhost:3003/style/` + style)
    .then((res) => {
      this.setState({
        outfits: res.data
      })
      
    })
    .catch(function(err) {
      console.log(err);
      console.log('THERE IS AN ERROR IN THE CLIENT SIDE GET')
    })
  }
  
  componentDidMount() {
    this.getProducts('casual');
  }
  
  render() {
    return(
      <div>
        <h1>Item shuffler (react rendering)</h1>
        <OutfitGeneratorList outfits={this.state.outfits} style={this.state.style}/>
      </div>
      
      
      
      )
  }
}

ReactDOM.render(<OutfitGenerator />, document.getElementById('app'));

