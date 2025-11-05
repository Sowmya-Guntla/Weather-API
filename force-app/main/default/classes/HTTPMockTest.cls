@isTest
global class HTTPMockTest implements HTTPCalloutMock{
    
    global HTTPResponse respond(HTTPRequest req){
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setHeader('Content-Type', 'application/json');
        res.setBody('{' +
            '"name":"Hyderabad",' +
            '"main":{' +
                '"temp":30.5,' +
                '"feels_like":32.1,' +
                '"temp_min":28.0,' +
                '"temp_max":32.5,' +
                '"pressure":1012,' +
                '"humidity":60' +
            '}' +
        '}');
        return res;
        
    }

}