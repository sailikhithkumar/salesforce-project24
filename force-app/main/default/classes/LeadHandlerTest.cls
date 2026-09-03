@isTest
public class LeadHandlerTest {
    @isTest
    public static void setRatingTest(){
        Lead l = new Lead();
        l.FirstName = 'sachin';
        l.LastName = 'tendulkar';
        l.LeadSource = 'web';
        l.Company = 'tesla';
        insert l;
    }
}