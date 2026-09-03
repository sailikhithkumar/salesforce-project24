@isTest
public class TaskHandlerTest {
    @isTest
    public static void populatePriorityTest(){
        Task t = new Task();
        t.Subject = 'Test task';
        t.Priority = 'Normal';
        insert t;  
    }
}