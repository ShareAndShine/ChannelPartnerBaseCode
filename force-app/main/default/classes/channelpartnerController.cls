public with sharing class channelpartnerController {
    public channelpartnerController() {

    }
    
    public static List<Account> getAccounts()
    {
         return [SELECT Id FROM Account];
    }
    
     public static List<Contact> getContacts()
    {
         return [SELECT Id FROM Contact];
    }
    
    public static List<Opportunity> getOpportunity()
    {
         return [SELECT Id,Name FROM Opportunity];
    }
    
     public static List<Case> getCases()
    {
         return [SELECT Id FROM Case];
    }
}
