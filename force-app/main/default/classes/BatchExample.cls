public class BatchExample implements Database.Batchable<sObject>{
    public Database.QueryLocator start(Database.BatchableContext bc){
        system.debug('start method');
        string query = 'Select Id, Name, Phone from Account where Phone = NULL';
        return Database.getQueryLocator(query);
    }
    public void execute (Database.BatchableContext bc, List<Account> accList){
        system.debug('execute method');
        HttpRequest req = new HttpRequest();
        req.setEndpoint('');
        req.setMethod('GET');
        Http h = new Http();
        HttpResponse res = h.send(req);
        string response = res.getBody();
        system.debug('response == '+ response);
        
        List<Account> accListUpdate = new List<Account>();
        /*for(Account acc: accList){
            acc.Name = acc.Name + ' batch';
            accListUpdate.add(acc);
        }
        if(!accListUpdate.isEmpty()){
            update accListUpdate;
        }*/
    }
    public void finish(Database.BatchableContext bc){
            system.debug('finish method');
        }
    }