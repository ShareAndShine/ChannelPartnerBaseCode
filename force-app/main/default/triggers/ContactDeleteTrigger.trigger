trigger ContactDeleteTrigger on Contact (before delete) {
	// Collect a set of account IDs associated with the contacts being deleted
    Set<Id> accountIds = new Set<Id>();
    for (Contact contact : Trigger.old) {
        accountIds.add(contact.AccountId);
    }
    
    // Query for any associated accounts
    List<Account> associatedAccounts = [SELECT Id FROM Account  WHERE Id IN :accountIds];
    
    // If any associated accounts are found, prevent the contact deletion
    if (!associatedAccounts.isEmpty()) {
        for (Contact contact : Trigger.old) {
            contact.addError('Cannot delete contact with associated account');
        }
    }
}