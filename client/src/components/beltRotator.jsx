import React from 'react';
import SimpleSlider from './slider.jsx';


const BeltRotator = (props) => (
  <div>
  { props.outfits.length < 1 ? (
    <div>
    </div>
    ) : (
    props.outfits.length === 1 ? (
        <img id="thumbnails" src={props.outfits[0].imgUrl} alt={props.outfits[0].title} />
  ) : (
      <div>          
       <SimpleSlider outfits={props.outfits}/>
      </div>
  )
)}
  </div>
)
  
export default BeltRotator;

