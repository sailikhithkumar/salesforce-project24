public class learnIntegrationApex {
    public static void makeCallout(){
        
        Http h = new Http();
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://likhith-portfolio-work.lovable.app/');
        req.setMethod('GET');
        HttpResponse res = h.send(req);
        
        system.debug('the status code is:' + res.getStatusCode());
        
        if(res.getStatusCode() == 200){
            System.debug('made a callout to external system'+ res.getBody());
        } 
    }

}