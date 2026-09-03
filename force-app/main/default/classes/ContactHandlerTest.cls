@isTest
public class ContactHandlerTest {
    @isTest
    public static void RestrictContactCreationTest(){
        Account acc = new Account();
        acc.Name = 'test acc';
        acc.Phone = '6789012345';
        insert acc;
        
        List<Contact> conList = new List<Contact>();
        for(integer i=0;i<2;i++){
        Contact con = new Contact();
        con.LastName = 'ravindra';
        con.AccountId = acc.Id;
        conList.add(con);
        }
        insert conList;
        Contact con = new Contact();
        con.LastName = 'test con1';
        con.AccountId = acc.Id;
    }
}