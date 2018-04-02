trigger CarTrigger on Car__c (after insert) {
    if (Trigger.isInsert) {
        Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();

        email.setToAddresses(new List<String>{
                'epanin@ascendix.com'
        });
        email.setSubject('Car was created');
        email.setHtmlBody('The Car with name ' + ((Car__c) Trigger.new[0]).Name + ' was created');
        Messaging.sendEmail(new Messaging.SingleEmailMessage[]{
                email
        });
    }
}