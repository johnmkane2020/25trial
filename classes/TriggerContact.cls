public with sharing class TriggerContact{
    public static void increment(List<Contact>cons){
        set<id> accountIds = new set<id>();
        for(contact c: cons){
            accountIds.add(c.accountId);
        }
        
        list<account> accList = new list<account>();
        for(account a: [select id,name,No_Of_Contacts__c,(select id from contacts) from account where id in: accountIds]){
            a.No_Of_Contacts__c = a.contacts.size();
            accList.add(a);
        }
        update accList;
    }
}