import React from 'react';

const ShirtRotator = (props) => (
  <div>
  { props.shirts.length === 1 ? (
      <div id="list">
        <img src={props.shirts[0].imgUrl} alt={props.shirts[0].title} />
      </div>
  ) : (
      <div id="list">          
        <img id="thumbnails" src={props.shirts[props.shirtIndex].imgUrl} alt={props.shirts[props.shirtIndex].title}/>
      </div>
  )}
  </div>
)
  
export default ShirtRotator;

