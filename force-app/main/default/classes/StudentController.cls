public with sharing class StudentController {
    @AuraEnabled(cacheable=true)
    public static List<Student__c> getStudentDetails(String searchTerm) {
        String searchKey = searchTerm;
        list<Student__c> res=[SELECT Name, Name__c, Email__c, Inactivity_Approved__c FROM Student__c WHERE Name__c=:searchKey OR Email__c =:searchKey];
        return res;
    }
}