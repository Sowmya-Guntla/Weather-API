public class WeatherResponse {
        @AuraEnabled public String location {get; set;}
        @AuraEnabled public Decimal temperature {get; set;}
        //@AuraEnabled public String description {get; set;}
    @AuraEnabled public Decimal feels_like {get; set;}
        @AuraEnabled public Decimal temp_min {get; set;}
        @AuraEnabled public Decimal temp_max {get; set;}
        @AuraEnabled public Decimal pressure {get; set;}
        @AuraEnabled public Decimal humidity {get; set;}
    }