public class AccConAndOppOperations {
    public static list<account> accList() {
        list<account> listAccount = [select id, name , annualrevenue, type, accountsource from account];
        
        return listAccount;    
    }

    public static list<opportunity>  OppStatus(string leadSource, string stage) {
        list<opportunity> listOpp = [select id , name, leadsource, stagename from opportunity where leadsource = :leadSource AND stagename =:stage ];

        return listOpp;
    }


    public static void oppAcc() {
        list<account> accounttype = [select name, id, annualrevenue, type, (select name, amount from opportunities where stagename = 'Closed Won') from account where type = 'Customer - Direct'];
        system.debug('filtered account is ' + accounttype);

        for (account eachAcc : accounttype) {
            system.debug('each account name is ' + eachAcc.Name + 'and annual revenue is ' + eachAcc.AnnualRevenue);
            system.debug('opportunity list is ' + eachAcc.Opportunities);

            for (opportunity eachOpp : eachAcc.Opportunities) {
                system.debug( 'opportunity name is ' + eachAcc.name + 'and opportunity amount is ' + eachOpp.amount);
                
            }
            
        }   
    }

    public static decimal oppAmount() {
        List<Opportunity> closedWonList = [select id, name , amount, stageName from Opportunity where stagename = 'Closed Won' AND amount !=null];

        decimal sumOfAmount = 0;
        for (opportunity eachOpp : closedWonList) {
            sumOfAmount += eachOpp.Amount;
        }

        return sumOfAmount;

        
    }

    public static list<Account> closedWonOpp(string stage) {
        list<account> listAccClosedW = [select id, name from Account where id IN ( SELECT accountID from Opportunity where stageName=:stage) ];

        return listAccClosedW;    
    }

    public static list<Account> closedWonOpp2(string stage) {

        List<Opportunity> listOpp = [select accountId from opportunity where stageName =:stage AND accountId != null];
        set<id> idList = new set<id>();
        for (opportunity opp : listOpp) {
            idList.add(opp.AccountId);
            
        }

        list<account> listAcc = [select id, name from Account where id IN :idList ];
        return listAcc;
          
    }

    public static list<account> accWithContact() {

        list<account> accList = [select id, name from account where id IN (select accountID from contact)];
        return accList;
        
    }

    public static void conAndAccName(Id accId) {
        account acc1 = [select id, name from account where id=:accId];
        contact cont = new Contact();
        cont.LastName=acc1.name;
        cont.AccountId=acc1.id;

        insert cont;

    }

    public static void topopp() {
        List<Opportunity> opplist = [select name, id, description from Opportunity where amount!=null  order by amount desc limit 10];
        list<opportunity> oppUpdate = new list<opportunity>();
        for (opportunity opp : opplist) {
            opp.Description = 'This is one of the top 10 opportunities.Please work on this properly.';
            oppUpdate.add(opp);
                
        }

        update oppUpdate;
        
    }

}