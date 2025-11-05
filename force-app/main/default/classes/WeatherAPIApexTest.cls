@isTest
public class WeatherAPIApexTest {
    @isTest
    static void testAPIwithLocations(){
        Test.setMock(HTTPCalloutMock.class,new HTTPMockTest());
        List<String> location = new List<string>{'Hyderabad'};
        Test.startTest();
        List<WeatherResponse> responses = WeatherAPIApex.callWeatherApi(location);
        Test.stopTest();
        System.assertNOTEquals(null,responses);
        System.assertEquals(1, responses.size());
        
        WeatherResponse wr = responses[0];
        System.assertEquals('Hyderabad', wr.location);
        System.assertEquals(30.5, wr.temperature);
        System.assertEquals(32.1, wr.feels_like);
        System.assertEquals(28.0, wr.temp_min);
        System.assertEquals(32.5, wr.temp_max);
        System.assertEquals(1012, wr.pressure);
        System.assertEquals(60, wr.humidity);
    }
    @isTest
    static void testNullLocation(){
        Test.startTest();
        List<WeatherResponse> responses = WeatherAPIApex.callWeatherApi(new List<String>());
        Test.stopTest();
        
        System.assertEquals(0, responses.size(), 'Responses should be empty for empty location list');
    }

}