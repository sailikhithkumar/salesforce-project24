trigger practicetriggeraccount on Account (before insert){
    for(Account acc : Trigger.new){
        if(acc.Rating == 'Hot'){
            acc.addError('Cannot create an new Account with Rating hot ');
        }
    }
}