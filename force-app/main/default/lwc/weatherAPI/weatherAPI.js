import { LightningElement, track } from 'lwc';
import callWeatherApi from '@salesforce/apex/WeatherAPIApex.callWeatherApi';

export default class WeatherAPI extends LightningElement {
    @track location = '';
    @track weatherData = null;

    handleChange(event) {
        if(event.target.name === "location") {
            this.location = event.target.value;
        }
    }

    handleOnclick() {
        if(!this.location) return; // optional: prevent empty call

        callWeatherApi({ location: [this.location] })
            .then(result => {
                if(result && result.length > 0) {
                    this.weatherData = result[0];
                }
            })
            .catch(error => {
                console.error('Error fetching weather:', error);
            });
    }
}
