public class ScheduleInActiveStudents implements schedulable{
    public void execute(schedulableContext sc){
        DeleteInactiveStudents a = new DeleteInactiveStudents();
        database.executeBatch(a);
    }

}