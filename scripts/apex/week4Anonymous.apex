list<contact> contactList = [SELECT AccountId, FirstName, LastName, email from contact];
system.debug('List of contact ' + contactList);

List<Account> accList = [SELECT Name, ID, Phone from Account where Phone = null order by Name];
system.debug(' Accounts ' + accList);

List<contact> contactList2 = [SELECT ID , name, AccountId from contact where AccountId = null];
system.debug('List of contact 2 ' + contactList2);

integer numberofOpp = [select count() from opportunity];
system.debug( 'number of opportunities ' + numberofOpp);