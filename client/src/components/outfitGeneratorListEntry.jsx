import React from 'react';

const OutfitGeneratorListEntry = (props) => (

  <div>
    <img src={props.outfit.imgUrl} alt={props.outfit.title}/>
  </div>
)

export default OutfitGeneratorListEntry;
