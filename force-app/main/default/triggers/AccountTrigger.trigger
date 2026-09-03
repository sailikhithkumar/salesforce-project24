trigger AccountTrigger on Account (before insert, before update, after insert) {
    if(trigger.isBefore && trigger.isInsert){
        AccountHandler.showError(trigger.new);
        AccountHandler.populateShippingAddress(trigger.new);
        AccountHandler.preventDuplicateName(trigger.new);
        AccountHandler.AnnualRevenueCheck(trigger.new);
    }
    if(trigger.isBefore && trigger.isUpdate){
        AccountHandler.RestrictNameChange(trigger.new, trigger.oldMap);
        AccountHandler.updateDescription(trigger.new, trigger.oldMap);
    }
    if(trigger.isAfter && trigger.isInsert){
        AccountHandler.insertContact(trigger.new);
    }
}