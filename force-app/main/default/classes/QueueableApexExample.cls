public class QueueableApexExample implements Queueable , Database.AllowsCallouts{
    /*private List<Id> accountIds;
    public QueueableApexExample(List<Id> accIds){
        this.accountIds = accIds;
    }*/
     private string endPointUrl;
     public QueueableApexExample(string endpoint){
        this.endPointUrl = endpoint;
     }
     public void execute (QueueableContext qc){
         HttpRequest req = new HttpRequest();
         req.setEndPoint(endPointUrl);
         req.setMethod('GET');
         Http h = new Http();
         HttpResponse res = h.send(req);
         String response = res.getBody();
         system.debug(response);
         
         
         
         /*List<Account> accList = [select Id, Name from Account Limit 10];
         List<Account> accListUpdate = new List<Account>();
         for(Account acc: acclist) {
             acc.Name = acc.Name + ' queueable update';
             accListUpdate.add(acc);
             Id jobId = qc.getJobId();
             system.debug('jobId ==' + jobId);
         } 
         if(!accListUpdate.isEmpty()){
             update accListUpdate;
         }*/
     }
}