public class AsynchApex {
    
     @future
     public static void updateAccount(List<Id> accIds){
         List<Account> accList = [select Id, Name from Account where Id IN : accIds];
         List<Account> accListUpdate = new List<Account>();
         for(Account acc : accList){
             acc.Name = acc.Name + ' -updated';
             accListUpdate.add(acc);
         }
         if(accListUpdate.isEmpty()){
             update accListUpdate;        
         }
         
     }
    @future(callout = true)
    public static void makeCallout(String endPointUrl){
        HttpRequest req = new HttpRequest();
        req.setEndPoint(endPointUrl);
        req.setMethod('GET');
        Http h = new Http();
        HttpResponse res = h.send(req);
        String response = res.getBody();
        system.debug(response);
        
        
    }
    
}