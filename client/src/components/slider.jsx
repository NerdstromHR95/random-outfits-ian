import React from "react";
import Slider from "react-slick";

class SimpleSlider extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    var settings = {
      dots:true,
      speed: 500,
      slidesToShow: 1,
      slidesToScroll: 1,
      arrows: true,
      className: "outfitslider"
    };
    return (
      <Slider {...settings}>
        {
          this.props.outfits.map((outfit) => {
          return (
          <div>
            <img src={outfit.imgUrl} style={{width: '100px', height: '175px'}} /> 
            <h3>${outfit.price}.00</h3>
          </div>
          )
          })
        }
      </Slider>
    )
  }
}

export default SimpleSlider;