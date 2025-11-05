public class WeatherAPIApex {
    @AuraEnabled
    public static List<WeatherResponse> callWeatherApi(List<String> location){
        List<WeatherResponse> responses = new List<WeatherResponse>();
        HTTP http = new HTTP();
        if(location == null || location.isEmpty()){
            return responses;
        }
        for(String loc:location){
            String endpoint = 'https://api.openweathermap.org/data/2.5/weather?q='+loc+'&APPID=YOUR_API&units=metric';
            HTTPRequest req = new HTTPRequest();
            req.setEndpoint(endpoint);
            req.setHeader('Content-Type','Application/JSON');
            req.setMethod('GET');
            HTTPResponse res= http.send(req);
            if(res.getStatusCode()==200){
                Map<String,Object> result = (Map<String,Object>) JSON.deserializeUntyped(res.getBody());
                Map<String,Object> main = (Map<String,Object>) result.get('main');
                WeatherResponse wr = new WeatherResponse();
                wr.location = (String)result.get('name');
                wr.temperature = Decimal.valueOf(String.valueOf(main.get('temp')));

                wr.feels_like = Decimal.valueOf(String.valueOf(main.get('feels_like')));
                wr.temp_min =Decimal.valueOf(String.valueOf(main.get('temp_min')));
                wr.temp_max =Decimal.valueOf(String.valueOf(main.get('temp_max')));
                wr.pressure = Decimal.valueOf(String.valueOf( main.get('pressure')));
                wr.humidity = Decimal.valueOf(String.valueOf(main.get('humidity')));
                responses.add(wr);
            }
        }
        return responses;
    }
   
}
