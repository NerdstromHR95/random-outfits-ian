import React from 'react';
import SimpleSlider from './slider.jsx'

const ShoeRotator = (props) => (
  <div>
  { props.outfits.length < 1 ? (
    <div>
    </div>
    ) : (
    props.outfits.length === 1 ? (
        <div className="pantslider">
          <img id="thumbnails" src={props.outfits[0].imgUrl} alt={props.outfits[0].title} />
          <h3  style={{textAlign:"center"}}>${props.outfits[0].price}.00</h3>
        </div>
  ) : (
      <div>          
       <SimpleSlider outfits={props.outfits}/>
      </div>
  )
)}
  </div>
)
  
export default ShoeRotator;
