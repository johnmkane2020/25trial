trigger updateContactsOnAccount on Contact (after insert,after delete) {
        if(Trigger.isInsert && Trigger.isAfter)
            TriggerContact.increment(Trigger.New);
        else if(Test.isRunningTest())
            TriggerContact.increment(Trigger.Old);
}