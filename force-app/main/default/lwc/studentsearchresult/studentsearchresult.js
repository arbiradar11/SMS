import { LightningElement, api } from 'lwc';

const columns = [
    { label: 'Student Id', fieldName: 'name' },
    { label: 'Student Name', fieldName: 'name'},
    { label: 'Student Email', fieldName: 'email'},
    { label: 'Student Inactivity Approved', fieldName: 'inactivity approved'},
];

export default class Studentsearchresult extends LightningElement {
    columns = columns;
    @api searchresults=[];
}