public with sharing class channelpartnerController {
    public channelpartnerController() {

    }


    // Added by Aatish for feature-005
    public static List<Account> getAccounts()
    {
        return [SELECT Id,Name FROM Account];
    }


    
   
     public static List<Contact> getContacts()
    {
         return [SELECT Id FROM Contact];
    }
    
    public static List<Opportunity> getOpportunity()
    {
         return [SELECT Id FROM Opportunity];
    }
    
     public static List<Case> getCases()
    {
         return [SELECT Id FROM Case];
    }
}

