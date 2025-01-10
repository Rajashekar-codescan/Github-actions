public class Foo {
    public voic foo1(){
        list<list<Contact>> contactSearchResult;

            if(Schema.sObjectType.Contact.isAccessible()){

                contactSearchResult = [FIND :emailAddress in EMAIL FIELDS RETURNING

                                                               Contact(Id,Name,AccountId,Account.Name,Email,OwnerId,Owner.Name,LastmodifiedDate

                                                               where RecordTypeId in: contactRecordTypes)];

            }
    }


	public void justGiveMeFoo() {

  List<List<Contact>> contactSearchResult = [FIND :emailAddress in EMAIL FIELDS RETURNING Contact(Id,Name,AccountId,Account.Name,Email,OwnerId,Owner.Name,LastmodifiedDate where RecordTypeId in: contactRecordTypes)];

  list<list<Contact>> contactSearchResult;
      if(Schema.sObjectType.Contact.fields.Email.isAccessible() && Schema.sObjectType.Account.fields.Email.isAccessible()){
          contactSearchResult = [FIND :emailAddress in EMAIL FIELDS RETURNING
          Contact(Id,Name,AccountId,Account.Name,Email,OwnerId,Owner.Name,LastmodifiedDate where RecordTypeId in: contactRecordTypes)];
      }
}
}

public class FooBar {
	public Contact foo(String tempID) {
		if (Contact.sObjectType.getDescribe().isAccessible()) {
			Contact c = [SELECT Name FROM Contact WHERE Id=:tempID];
			return c;
		}
		return null;
	}
}

public class Foo1 {
    void bar() {
        List<List<SObject>> searchList;

        if (Account.sObjectType.getDescribe().isAccessible()) {
            searchList = [FIND 'Savings OR Checking' IN NAME FIELDS RETURNING Account(Id, Name, Industry WHERE Industry = 'Banking')];
            // Process searchList...
        }

        if (Schema.sObjectType.Account.isAccessible()) {
                    searchList = [FIND 'Savings OR Checking' IN NAME FIELDS RETURNING Account(Id, Name, Industry WHERE Industry = 'Banking')];
        // Process searchList...
        }

        if (Schema.sObjectType.Opportunity.isAccessible()) {
               AggregateResult[] test = [SELECT Id FROM Opportunity];
        }

        if (Contact.sObjectType.getDescribe().isAccessible()) {
            List<List<Contact>> searchList2 = [FIND 'Loan Officer OR "Branch Manager"' IN ALL FIELDS RETURNING Contact(Id, FirstName, LastName, Title WHERE Title LIKE '%Loan Officer%' OR Title LIKE '%Branch Manager%')];
            // Process searchList...
        }

        if (Opportunity.sObjectType.getDescribe().isAccessible()) {
            List<List<Opportunity>> searchList3 = [FIND 'Personal Loan OR Business Loan' IN ALL FIELDS RETURNING Opportunity(Id, Name, StageName, Amount WHERE Description LIKE '%Personal Loan%' OR Description LIKE '%Business Loan%')];
            // Process searchList...
        }

        if (Lead.sObjectType.getDescribe().isAccessible()) {
            List<List<Lead>>searchList4 = [FIND 'Investment Portfolio OR Wealth Management' IN ALL FIELDS RETURNING Lead(Id, FirstName, LastName, Company, Description WHERE Description LIKE '%Investment Portfolio%' OR Description LIKE '%Wealth Management%')];
            // Process searchList...
        }


            searchList = [FIND 'Fraudulent Activity OR "Unauthorized Transaction"' IN ALL FIELDS RETURNING Case(Id, CaseNumber, Subject, Status WHERE Subject LIKE '%Fraudulent Activity%' OR Subject LIKE '%Unauthorized Transaction%')];
            // Process searchList...


        if (Patient__c.sObjectType.getDescribe().isAccessible()) {
            searchList = [FIND 'Diabetes OR Hypertension' IN ALL FIELDS RETURNING Patient__c(Id, Name, Medical_History__c WHERE Medical_History__c LIKE '%Diabetes%' OR Medical_History__c LIKE '%Hypertension%')];
            // Process searchList...
        }

        if (Appointment__c.sObjectType.getDescribe().isAccessible()) {
            searchList = [FIND 'Check-up OR Follow-up' IN ALL FIELDS RETURNING Appointment__c(Id, Patient_Name__c, Appointment_Date__c, Appointment_Type__c WHERE Appointment_Date__c > TODAY)];
            // Process searchList...
        }

        if (Order__c.sObjectType.getDescribe().isAccessible()) {
            searchList = [FIND 'Laptop OR Smartphone' IN ALL FIELDS RETURNING Order__c(Id, Customer_Name__c, Product_Name__c WHERE Product_Name__c LIKE '%Laptop%' OR Product_Name__c LIKE '%Smartphone%')];
            // Process searchList...
        }

        if (Inventory__c.sObjectType.getDescribe().isAccessible()) {
            searchList = [FIND 'Electronics OR "Home Appliances"' IN ALL FIELDS RETURNING Inventory__c(Id, Product_Name__c, Category__c, Inventory_Level__c WHERE Category__c LIKE '%Electronics%' OR Category__c LIKE '%Home Appliances%')];
            // Process searchList...
        }

        if (Customer__c.sObjectType.getDescribe().isAccessible()) {
            searchList = [FIND 'Unlimited Data OR "Family Plan"' IN ALL FIELDS RETURNING Customer__c(Id, Name, Service_Plan__c WHERE Service_Plan__c LIKE '%Unlimited Data%' OR Service_Plan__c LIKE '%Family Plan%')];
            // Process searchList...
        }

        if (Case.sObjectType.getDescribe().isAccessible()) {
            searchList = [FIND 'Network Outage OR "Slow Internet"' IN ALL FIELDS RETURNING Case(Id, CaseNumber, Subject, Status WHERE Subject LIKE '%Network Outage%' OR Subject LIKE '%Slow Internet%')];
            // Process searchList...
        }


        List<List<Account>> searchList1 = [FIND 'Salesforce' IN ALL FIELDS RETURNING Account(Name,Industry WHERE Industry='Chemical' LIMIT 1),Contact(FirstName,LastName),Opportunity(Name)];

        List<List<Account>> searchList2 = [FIND 'Acme*' IN NAME FIELDS RETURNING Account(Id, Name WHERE Name LIKE 'Acme%' ORDER BY Name LIMIT 10), Contact(Id, LastName, FirstName WHERE LastName LIKE 'Acme%')];

        Contact c = [SELECT Name FROM Contact WHERE Id=:tempID];

        Contact c = [SELECT Name FROM Contact WHERE Id=:tempID];


    }
}
