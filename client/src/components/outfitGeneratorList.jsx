import React from 'react';
import OutfitGeneratorListEntry from './outfitGeneratorListEntry.jsx';

const OutfitGeneratorList = (props) => (
  <div id="list">
    <h3>{props.style}</h3>
    {
      props.outfits.map((outfit) => {
        return (
          <OutfitGeneratorListEntry outfit={outfit} />
        )
      })
    }  
  </div>
)
export default OutfitGeneratorList;

