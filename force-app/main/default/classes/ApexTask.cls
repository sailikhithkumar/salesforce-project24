public class ApexTask {
    //whenever a task is created, set priority as High
    public static void populatePriority(List<Task> taskList){
        for(Task t : taskList){
            t.Priority = 'High';
        }        
    }
}