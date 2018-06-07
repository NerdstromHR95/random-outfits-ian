import React from 'react';

const ShoeRotator = (props) => (
  <div>
  { props.shoes.length === 1 ? (
      <div id="list">
        <img id="thumbnails" src={props.shoes[0].imgUrl} alt={props.shoes[0].title} />
      </div>
  ) : (
      <div id="list">          
        <img id="thumbnails" src={props.shoes[props.shoeIndex].imgUrl} alt={props.shoes[props.shoeIndex].title}/>
      </div>
  )}
  </div>
)
  
export default ShoeRotator;
