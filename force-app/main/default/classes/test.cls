public class test {
    public static void preventhot(List<Account> accList){
        for(Account acc : accList){
            if(acc.Rating == 'Hot' && acc.Rating == 'Null'){
                acc.addError('no hot new acc record');
            }
        }       
    } 
}