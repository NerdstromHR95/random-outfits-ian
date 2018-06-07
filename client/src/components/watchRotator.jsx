import React from 'react';

const WatchRotator = (props) => (
  <div>
  { props.watches.length === 1 ? (
      <div id="list">
        <img id="thumbnails" src={props.watches[0].imgUrl} alt={props.watches[0].title} />
      </div>
  ) : (
      <div id="list">          
        <img id="thumbnails" src={props.watches[props.watchIndex].imgUrl} alt={props.watches[props.watchIndex].title}/>
      </div>
  )}
  </div>
)
  
export default WatchRotator;