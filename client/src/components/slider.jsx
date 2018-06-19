import React from "react";
import Slider from "react-slick";

const SimpleSlider = (props) => {
    return (
        {  
          
          <div>
            <button onClick={() => props.slideClickDown(props.index, props.name)}></button>
            <img src={props.outfits[props.index].imgUrl} style={{width: '100px', height: '175px'}} /> 
            <h3>${props.outfits[props.index].price}.00</h3>
            <button onClick={() => props.slideClickUp(props.index, props.name)}</button>
          </div>
          
        }
    )
  }

export default SimpleSlider;