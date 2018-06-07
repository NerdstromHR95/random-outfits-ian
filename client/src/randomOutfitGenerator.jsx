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
      gender:'m',
      shirts:[],
      shoes:[],
      pants:[],
      watches:[],
      belts:[]
    } 
    this.getProducts = this.getProducts.bind(this);
  }
  // sortProducts(data) {
  //   data.forEach(function(outfit) {
  //     if(outfit.type === "pants") {
  //       this.state.pants.push(outfit);
  //     }
  //     if(outfit.type === "shirt") {
  //       this.state.shirts.push(outfit);
  //     }
  //     if(outfit.type === "shoes") {
  //       this.state.shoes.push(outfit);
  //     }
  //     if(outfit.type === "belt") {
  //       this.state.belts.push(outfit);
  //     }
  //     else {
  //       this.state.watches.push(outfit);
  //     }
  //   })
  // }
  
  getProducts(gender, style) {
    axios.get(`http://localhost:3003/gender/` + gender +/style/ + style)
    .then((res) => {

      this.setState({
        outfits: res.data,
        shirts: res.data.filter((outfit) => outfit.type === "shirt"),
        shoes: res.data.filter((outfit) => outfit.type === "shoes"),
        pants: res.data.filter((outfit) => outfit.type === "pants"),
        belts: res.data.filter((outfit) => outfit.type === "belt"),
        watches: res.data.filter((outfit) => outfit.type === "watch")
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

