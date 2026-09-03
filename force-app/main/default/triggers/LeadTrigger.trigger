trigger LeadTrigger on Lead (before insert) {
    if(trigger.isBefore && trigger.isInsert){
        LeadHandler.setRating(trigger.new);      
    }
}