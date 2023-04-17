public with sharing class channelpartnerController {
    public channelpartnerController() {

    }
    
    public static List<Account> getAccounts()
    {
         return [SELECT Id,Name FROM Account];
    }
    
}
