import React from 'react';
import ReactDOM from 'react-dom';
import OutfitGeneratorList from './components/outfitGeneratorList.jsx'

class OutfitGenerator extends React.Component {
  constructor(props) {
    super(props);
    
    this.state = {
      
    }
  }
  
  render() {
    return(
      <div>
        <h1>Item shuffler (react rendering)</h1>
      </div>
      
      
      
      )
  }
}

ReactDOM.render(<OutfitGenerator />, document.getElementById('app'));

