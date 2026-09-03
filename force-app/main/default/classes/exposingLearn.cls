@RestResource(urlMapping='/getDataFromOurSystem/*')
global class exposingLearn {
    
    @httpget
    global static List<Contact> getContactData(){
        RestRequest req = RestContext.request;
        map<String, String> mapOfData = req.params;
        String myRecId = mapOfData.get('sfId');
        String email = mapOfData.get('email');
        System.debug('check passed record id'+myRecId);
        System.debug('check passed email '+email);
        
        
        List<Contact> conList = [Select Id, Name from Contact where Id =: myRecId];
        return conList;        
    }        
}