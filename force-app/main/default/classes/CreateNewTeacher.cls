@RestResource(urlMapping='/CreateNewTeacher/*')
global class CreateNewTeacher {
    @HttpPost
    global static void createTeacherRecord(List<String> TeacherName){
        List<Teacher__c> teacherRecord = new List<Teacher__c>();
        for(String teacher:TeacherName){
            Teacher__c newTeacher = new Teacher__c();
            newTeacher.Teacher_Name__c = teacher;
            teacherRecord.add(newTeacher);
        }
        insert teacherRecord;
    }

}