import ReactOnRails from 'react-on-rails'; //changed

import HelloWorld from '../bundles/TicketingApplication/components/HelloWorld';

// This is how react_on_rails can see the HelloWorld in the browser.
ReactOnRails.register({
  HelloWorld
});
