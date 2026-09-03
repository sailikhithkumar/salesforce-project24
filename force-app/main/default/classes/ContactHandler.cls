public class ContactHandler {
    //Display an error on contact creation if the account has more than 2 contact.
    public static void RestrictContactCreation(List<Contact> conList){
        set<Id> accIds = new set<Id>();
        for(Contact con : conList){
            if(con.AccountId != null){
               accIds.add(con.AccountId); 
            }
        }
        system.debug('accIds=== '+ accIds);
        List<Account> exisiting = [Select Id, Name, (Select Id, Name from contacts) from Account where Id IN: accIds];
        system.debug('exisiting=== '+ exisiting);
        Map<Id, Account> accMap = new Map<Id, Account>();
        for(Account oldacc : exisiting){
            accMap.put(oldacc.Id, oldacc);
        }
        system.debug('accMap=== '+ accMap);
        for(Contact newcon : conList){
            if(newcon.AccountId != null && accMap.containsKey(newcon.AccountId)){
                if(accMap.get(newcon.AccountId).Contacts.size() >= 2){
                    newcon.addError('you cannot associate more than 2 contacts for any Account');                    
                }               
            }
        }
    }
    @AuraEnabled(cacheable = true)
    public static List<Contact> getContactList(){
        List<Contact> conlist = [select Id, Name, Email, Phone, LeadSource From Contact];
        system.debug('conList =='+conlist);
        return conlist;
    }       
}