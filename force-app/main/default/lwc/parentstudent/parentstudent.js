import { LightningElement } from 'lwc';

export default class Parentstudent extends LightningElement {
    searchDetail=[];
    handleStudent(event){
        this.searchDetail=[];
        try{
            event.detail.forEach(element => {
                var stuData={
                    id:element.Name,
                    name:element.Name__c,
                    email:element.Email__c,
                    status:element.Inactivity_Approved__c
                }
                this.searchDetail.push(stuData);
            });
        }catch(e){
            console.log(e);
        }
    }
}