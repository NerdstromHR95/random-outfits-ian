import React from 'react';

const BeltRotator = (props) => (
  <div>
  { props.belts.length === 1 ? (
      <div id="list">
        <img src={props.belts[0].imgUrl} alt={props.belts[0].title} />
      </div>
  ) : (
      <div id="list">          
        <img id="thumbnails" src={props.belts[props.beltIndex].imgUrl} alt={props.belts[props.beltIndex].title}/>
      </div>
  )}
  </div>
)
  
export default BeltRotator;

