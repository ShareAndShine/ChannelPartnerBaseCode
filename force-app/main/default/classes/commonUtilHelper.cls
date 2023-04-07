public with sharing class commonUtilHelper {
    public commonUtilHelper() {

    }

    // Added by Karthick for feature-001
    public static string GetOrgUrl() {

        String baseURL =  URL.getSalesforceBaseUrl().toExternalForm();
        return baseURL;
    }

    // Added by Karthick for feature-001
    public static string GetCurrentUName() {

        return UserInfo.getUserName();
    }


}