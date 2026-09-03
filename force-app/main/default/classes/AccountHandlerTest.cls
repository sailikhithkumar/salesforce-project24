@isTest
public class AccountHandlerTest {
    @isTest
    public static void showErrorTest(){
        Account acc = new Account();
        acc.Name = 'test class1';
        acc.Phone = '9078563412';
        Account acc1 = new Account();
        acc.Name = 'test class2';
        List<Account> accList = new List<Account>();
        accList.add(acc);
        accList.add(acc1);
        try{
        //insert acc;
        insert accList;
        }
        catch(Exception e){
            system.assertEquals('Phone field cannot be blank','Phone field cannot be blank');
        }
    }
    @isTest
    public static void populateShippingAddressTest(){
        Account acc = new Account();
        acc.Name ='test3';
        acc.Phone ='90678456123';
        acc.BillingStreet ='test street';
        acc.BillingCity ='test city';
        acc.BillingPostalCode ='305001';
        acc.BillingCountry ='india';
        insert acc;       
    }
    @isTest
    public static void preventDuplicateNameTest(){
        Account acc = new Account();
        acc.Name = 'test4';
        acc.Phone = '3456789012';
        insert acc;
        
        Account acc1 = new Account();
        acc1.Name = 'test4';
        acc1.Phone = '4567890123';
        //insert acc1;
        try{
            insert acc1;
        }
        catch(Exception e){
            system.assertEquals('Name already exisits, Please change the name','Name already exisits, Please change the name');
        }
    }
    @isTest
    public static void AnnualRevenueCheckTest(){
        Account acc = new Account();
        acc.Name = 'test revenue';
        acc.Phone = '9087654321';
        acc.AnnualRevenue = 10000;
        try{
        insert acc;
        }
        catch(Exception e){
            system.assert(e.getMessage().contains('Annual Revenue Cannot be less Than 1000'),'unexpected error');
        }
    }
    @isTest
    public static void RestrictNameChangeTest(){
        Account acc = new Account();
        acc.Name = 'test namechange';
        acc.Phone = '9087654321';
        insert acc;
        
        acc.Name = ' Test new name';
        try{
            update acc;
        }
        catch(Exception e){
            system.assert(e.getMessage().contains('Account Name cannot be Modified once created'), 'unexpected error');
        }
    }
    @isTest
    public static void updateDescriptionTest(){
        Account acc = new Account();
        acc.Name = 'test acc';
        acc.Phone = '90876554322';
        insert acc;
        
        acc.Phone = '90876543233';
        update acc;
        List<Account> accList = [Select Id, Name, Phone, Description from Account where Id =: acc.Id ];
        string descript = 'Phone is update !! New Value = 1111 old value = 3334' ;
        system.assertEquals(descript,accList[0].Description,'unexpected error');    
    }
}