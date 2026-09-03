public class IntegrationConsume {
    
    public static void Callout(){
        Http http = new Http();
        HttpRequest req = new HttpRequest();
        req.setEndpoint('callout:SF_Named_Cred/services/apexrest/DataAvailable');
        req.setMethod('GET');
        HttpResponse res = http.send(req);
        System.debug('Status Code '+ res.getStatusCode());
        if(res.getStatusCode() == 200){
            System.debug('this is data '+res.getBody());
        }
        
    }
}