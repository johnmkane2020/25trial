@isTest
public class TriggerContactTest 
{
   @testSetup static void dataSetup() {
     	Account testAccount = new Account();  
       	testAccount.Name='Test Account';
       	insert testAccount;   
       	Contact testContact = new Contact();
       	testContact.AccountId  = testAccount.id;
       	testContact.LastName = 'Kumar';
       	insert testContact;
        
     }
   @isTest static void testContact(){
        list<Contact> caseobj = [Select id,AccountId from Contact limit 1];
        Account accObj =[Select id,No_Of_Contacts__c from Account limit 1];
       	accObj.No_Of_Contacts__c = 1;
       	update accObj;
       //TriggerContact tContact = new TriggerContact();
       TriggerContact.increment(caseobj);
       
   } 
   @isTest static void testContact1(){
        list<Contact> caseobj = [Select id,AccountId from Contact limit 1];
        
        //TriggerContact tContact = new TriggerContact();
        TriggerContact.increment(caseobj);
        delete caseobj;
        
    } 
   
}