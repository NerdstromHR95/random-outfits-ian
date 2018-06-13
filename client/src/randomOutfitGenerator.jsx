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
      styleList:["casual","unemployed_chic","business_casual","athleisure","hipster_formal"]
    } 
    this.getProducts = this.getProducts.bind(this);
    this.shuffler = this.shuffler.bind(this);
    this.getProduct = this.getProduct.bind(this);
  }     
  
  getProducts(gender, style) {
    axios.get(`http://localhost:3003/random/gender/` + gender +/style/ + style)
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
  
  getProduct() {
    let productId = window.location.pathname.split('/')[1];
    axios.get(`http://localhost:3003/random/products/` + productId)
      .then((res) => {
        this.setState({
          currentProduct: res.data[0].name,
          style: res.data[0].style,
          gender: res.data[0].gender
        }, function () {          
          this.getProducts(this.state.gender, this.state.style);
        })
      })
      .catch(function(err) {
        console.log(err);
        console.log('there is an error on single product get')
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
    this.getProduct()
  }
  
  
  render() {
    let styleName;
    if(this.state.style === "unemployed_chic") {
      styleName = "Derelique";
    } else if (this.state.style === "hipster_formal") {
      styleName = "Hipster Formal";
    } else if (this.state.style === "business_casual") {
      styleName = "Business Casual";
    } else if (this.state.style === "casual") {
      styleName = "Casual";
    } else if (this.state.style === "athleisure") {
      styleName = "Athleisure"
    }
    let styleAuthor;
    let styleDescription;
    if(this.state.style === "unemployed_chic") {
      styleAuthor = "by Aaron Tesfai";
      styleDescription = "A step beyond hipster style moving towards a vagabond/homeless look.";
    } else if (this.state.style === "hipster_formal") {
      styleAuthor = "by Dan Olson"
      styleDescription = "Because suits are too mainstream.";
    } else if (this.state.style === "business_casual") {
      styleAuthor = "by Jehwa Shin"
      styleDescription = "To show your coworkers that you aren't that boring.";
    } else if (this.state.style === "casual") {
      styleAuthor = "by Patricia Shirazi"
      styleDescription = "Staying cool when you look so hot.";
    } else if (this.state.style === "athleisure") {
      styleAuthor = "by Ian McKinney"
      styleDescription = "For anything from hitting the gym to hitting the Netflix.";
    }
    
    
    return(
      <div className="leftcomponent">
        <div className="navbar">
          <h2>{styleName}
            <div className="shuffler" onClick={this.shuffler}>
            <i className="fas fa-random"></i>
            </div>
          </h2>
          <h4 style={{fontSize:"13", fontStyle:"lato", fontWeight:"normal"}}>{styleAuthor}</h4>
          <h5 style={{fontSize:"8", fontStyle:"lato", fontWeight:"normal"}}>{styleDescription}</h5> 
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

ReactDOM.render(<OutfitGenerator />, document.getElementById('outfit'));

