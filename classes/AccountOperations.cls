public class AccountOperations {
    Public static Account setDefaultDescription(Account a){
        If (a.Description != null) return a;
        Else {
            a.Description = 'Default description';
            return a;
        }
    }

       //New methods introduced by Developer 1 working on the US-003
    public static Account setDefaultBillingAddress(Account a){
        a.billingstreet = '535 Mission Street, 15th floor'; // DEV 1 updates

        a.billingstate = 'California';
        a.billingpostalcode ='94105'; // DEV 2 updates
        return a;
    }

    public static Account setDefaultShippingAddress(Account a){
        a.shippingstreet = '535 Mission Street, 15th floor'; // DEV 1 updates

        a.shippingstate = 'California';
        a.shippingpostalcode ='94105'; // DEV 2 updates
        return a;
    }
    public static Account setDefaultPhone(Account a) {//DEV 1

        a.Phone='9257868477'; // DEV 2 updates
        return a;
    }
    public static Account setDefaultURL(Account a) { //DEV 1
        a.website = 'www.copado.com'; // DEV 2 updates

        return a;
    }
}