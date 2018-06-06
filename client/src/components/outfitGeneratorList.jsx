import React from 'react';
import OutfitGeneratorListEntry from './outfitGeneratorListEntry.jsx';

const OutfitGeneratorList = (props) => (
  <div id="list">
    <h3>{props.style}</h3>
    {
      props.outfits.map((outfit) => {
        return (
          <div>
          <OutfitGeneratorListEntry outfit={outfit} />
          </div>
        )
      })
    }  
  </div>
)
export default OutfitGeneratorList;

