import React from 'react';

const PantsRotator = (props) => (
  <div>
  {props.pants.length === 1 ? (
      <div id="list">
        <img src={props.pants[0].imgUrl} alt={props.pants[0].title} />
      </div>
  ) : (
      <div id="list">          
        <img id="thumbnails" src={props.pants[props.pantsIndex].imgUrl} alt={props.pants[props.pantsIndex].title}/>
      </div>
  )}
  </div>
)
  
export default PantsRotator;
