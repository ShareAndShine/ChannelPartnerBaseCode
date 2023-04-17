public with sharing class commonUtilHelper {
    public commonUtilHelper() {

    }

    // Added by Karthick for feature-001
    public static string GetOrgUrl() {

        String baseURL =  URL.getSalesforceBaseUrl().toExternalForm();
        return baseURL;
    }

    // Added by Karthick for feature-001
    // Updated by AAtish for feature-005
    public static string GetCurrentUName() {

        return UserInfo.getFirstName();
    }
    
    public static string GetCurrentUserRoleId() {

        return UserInfo.getUserRoleId();
    }


}
