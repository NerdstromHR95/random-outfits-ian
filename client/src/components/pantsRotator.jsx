import React from 'react';
import SimpleSlider from './slider.jsx';


const PantsRotator = (props) => (
  <div>
  { props.outfits.length < 1 ? (
    <div>
    </div>
    ) : (
    props.outfits.length === 1 ? (
        <img id="thumbnails" src={props.outfits[0].imgUrl} alt={props.outfits[0].title} />
  ) : (
      <div>          
       <SimpleSlider id="pants" outfits={props.outfits}/>
      </div>
  )
)}
  </div>
)
  
export default PantsRotator;
