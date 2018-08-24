# SharePoint tool for managing user profiles in the User Profile Service and for importing users from external systems
 This solution consists of a couple of SharePoint application pages (layout pages), custom SharePoint logger class and some JS/CSS which are used to build a simple UI for performing common user profiles management tasks. This tool can be instead of the standard admin UI for managing UPS profiles accessible in the Central Administration->Manage Service Applications->User Profile Service Application. It has the following features:
 - simple UI for searching, editing, creating and deleting user profiles stored in the SharePoint UPS;
 - ability to import users from external web service in a semi-automatic mode when you browse the external users source and select which users to import to the UPS database;
 - deployed as a farm solution and requires farm admin credentials for installation and initial configuration;
 - developed for SharePoint 2013 and SharePoint 2016 on-prem, not suitable for SharePoint Online;
 
The original usage scenario for this tool which prompted me to develop it in the first place is decribed in more details here, but in the essense it was all about Extranet/Partner SharePoint portal deployed in DMZ with two separate AD forests for internal and external accounts and ADFS/SAML authentication enabled for the users of the internal corporate AD accessing this SharePoint farm. As we know, PeoplePicker search and resolve functionality is not available for SAML users by default and the standard UPS AD import is not possible for the users in another forest behind the firewall, and so I came up with a custom solution consisting of the following components:
- SAML authenticaion provider configured on SharePoint (using ADFS in my case) with "email" identifier claim;
- this UPSBrowser tool used by the farm admins and designated people from business to import selected users from the internal AD to the SharePoint UPS database;
- an accompaning web service UPSBrowser_WS programmed to connect to a domain controller in the internal AD forest/domain (other than the one where SharePoint is deployed) fetching users over LDAP and sending to the  UPSBrowser in JSON format for populating the UPS database;
- a custom SharePoint claim provider UPSClaimProvider used to enable PeoplePicker resolve/search among the imported profiles stored in the UPS database.
The typical process for granting an internal corporate AD user access to the SharePoint portal in DMZ looks like this:
- an internal AD user INTERNAL\user1 (email: user1@internal.company.com) requests access to the Extranet SharePoint farm in DMZ;
- by default hi/she has not access to that farm;
- farm admin or business person with appropriate acces to UPSBrowser tool imports the internal user from the internal.company.com AD domain to the UPS database as a new profile, using the SAML format for account name with "email" identifier claim (i.e. 	i:05.t|saml_auth_provider|user1@internal.company.com);
- as soon as the user profile is created, it is possible to search/resolve this user in PeoplePicker control and this way grant him required access to the required SharePoint sites and lists.

As a side note, I also briefly considered using User Profile FIM synchronization with BCS source, but decided against this option because of its complexity and because of the bad memories associated with the FIM based synchronization we used back then in the SharePoint 2010 times :)
