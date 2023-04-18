public with sharing class channelpartnerController {
    public channelpartnerController() {

    }

    // Added by Aatish for feature-005
    public static List<Account> getAccounts()
    {
        return [SELECT Id, Name FROM Account];
    }
}