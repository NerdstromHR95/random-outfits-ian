import React from 'react';
import ReactDOM from 'react-dom';
import OutfitGeneratorList from './components/outfitGeneratorList.jsx';
import BeltRotator from './components/beltRotator.jsx';
import ShirtRotator from './components/shirtRotator.jsx';
import PantsRotator from './components/pantsRotator.jsx';
import ShoeRotator from './components/shoeRotator.jsx';
import WatchRotator from './components/watchRotator.jsx';
import axios from 'axios';
import SimpleSlider from './components/slider.jsx';

class OutfitGenerator extends React.Component {
  constructor(props) {
    super(props);
    
    this.state = {
      style:"business_casual",
      currentProduct:null,
      outfits:[],
      gender:'f',
      shirts:[{}],
      shoes:[{}],
      pants:[{}],
      watches:[{}],
      belts:[{}],
      shirtIndex:0,
      shoeIndex:0,
      pantsIndex:0,
      watchIndex:0,
      beltIndex:0,
      styleList:["casual","hipster_formal","unemployed_chic","business_casual","athleisure"]
    } 
    this.getProducts = this.getProducts.bind(this);
    this.shuffler = this.shuffler.bind(this);
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
  //     else {styleList
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
  
  getRandomIntInclusive(min, max) {
    min = Math.ceil(min);
    max = Math.floor(max);
    return Math.floor(Math.random() * (max - min + 1)) + min;
  }
  
  shuffler() {
    let currentStyleIndex = this.state.styleList.indexOf(this.state.style);
    let potentialStyleList = [];
    potentialStyleList = potentialStyleList.concat(this.state.styleList);
    potentialStyleList.splice(currentStyleIndex,1);
    this.setState({
      style: potentialStyleList[this.getRandomIntInclusive(0,potentialStyleList.length-1)]
    }, () => {
      this.getProducts(this.state.gender, this.state.style);
    })
  }
  
  componentDidMount() {
    this.getProducts(this.state.gender, this.state.style);
  }
  
  
  render() {
    let styleName;
    if(this.state.style === "unemployed_chic") {
      styleName = "Unemployed Chic";
    } else if (this.state.style === "hipster_formal") {
      styleName = "Hipster Formal";
    } else if (this.state.style === "business_casual") {
      styleName = "Business Casual";
    } else if (this.state.style === "casual") {
      styleName = "Casual";
    } else if (this.state.style === "athleisure") {
      styleName = "Athleisure"
    }
    
    return(
      <div className="leftcomponent">
        <div className="navbar">
          <h2>{styleName}
          <div className="shuffler" onClick={this.shuffler}>
            <i className="fas fa-random"></i>
          </div>
          </h2>
        </div>
        <div className="rotator">
          <BeltRotator className="accessory" outfits={this.state.belts} beltIndex={this.state.beltIndex}/>
          <ShirtRotator outfits={this.state.shirts} shirtIndex={this.state.shirtIndex}/>
          <PantsRotator outfits={this.state.pants} pantsIndex={this.state.pantsIndex}/>
          <ShoeRotator className="accessory" outfits={this.state.shoes} shoeIndex={this.state.shoeIndex}/>
          <WatchRotator className="accessory" outfits={this.state.watches} watchIndex={this.state.watchIndex}/>
        </div>
      </div>
    )
  }
}

ReactDOM.render(<OutfitGenerator />, document.getElementById('app'));

