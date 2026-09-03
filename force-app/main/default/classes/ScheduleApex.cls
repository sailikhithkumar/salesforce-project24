public class ScheduleApex implements Schedulable {
    public void execute(SchedulableContext sc){
        BatchExample bcexample = new BatchExample();
        Id Jobid = Database.executeBatch(bcexample,1);
        system.debug('Jobid =='+Jobid);
    }
}