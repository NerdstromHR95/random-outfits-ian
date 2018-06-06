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
      outfits:[],
      gender:'m'
    } 
    this.getProducts = this.getProducts.bind(this);
  }
  
  getProducts(gender, style) {
    axios.get(`http://localhost:3003/gender/` + gender +/style/ + style)
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
    this.getProducts(this.state.gender, this.state.style);
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

