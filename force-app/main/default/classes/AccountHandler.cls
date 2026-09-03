public class AccountHandler {
    //fetch list of account to show in lightning-datatable
    public static List<Account> getAccountList(){
        List<Account> accList = [select Id, Name , Phone, Rating, Industry from Account];
        system.debug('accList== '+accList);
        return accList;
    }
    //Show Custom validation error if phone field is empty while inserting an Account
    public static void showError(List<Account> accList){
        for(Account acc : accList){
            if(acc.Phone == null || acc.Phone == ''){
                acc.Phone.addError('Phone field cannot be blank');
            }
        }       
    }
    //populate account billing address to account shipping address while inserting an account
    public static void populateShippingAddress(List<Account> accList){
        for(Account acc : accList){
            if(acc.BillingStreet != null){
                acc.ShippingStreet = acc.BillingStreet;
            }
            if(acc.BillingCity != null){
                acc.ShippingCity = acc.BillingCity;
            }
            if(acc.BillingPostalCode != null){
                acc.ShippingPostalCode = acc.BillingPostalCode;
            }
            if(acc.BillingCountry != null){
                acc.ShippingCountry = acc.BillingCountry;
            }
        }
    }
    //prevent duplicate name while inserting an Account - set
    /*public static void preventDuplicateName(List<Account> accList){
        set<String> accNames = new set<string>();
        for(Account acc : accList){
            accNames.add(acc.Name);    
        }
        List<Account> exisitingAccount = [select Id, Name from Account Where Name IN: accNames];
        for(Account newAcc : accList){
            for(Account oldAcc : exisitingAccount){
                if(newAcc.Name == oldAcc.Name){
                    newAcc.Name.addError('Name already exisits , please change the Name');
                }
            }    
        }
    }*/
    // prevent duplicate name with - map without doing with nested forloop
    public static void preventDuplicateName(List<Account> accList){
        set<String> accNames = new set<string>();
        for(Account acc : accList){
            accNames.add(acc.Name);    
        }
        List<Account> exisitingAccount = [select Id, Name from Account Where Name IN: accNames];
        Map<String,Account> exisitingAccountMap = new Map<String,Account>();
        for(Account exsAcc : exisitingAccount){
            exisitingAccountMap.put(exsAcc.Name, exsAcc);
        }
        for(Account newAcc : accList){
            if(exisitingAccountMap.containsKey(newAcc.Name)){
                newAcc.Name.addError('Name already exisits, Please change the name');
            }
        }
    }
    //if annual revenue provided by user is less than 1000, then throw error
    public static void AnnualRevenueCheck(List<Account> accList){
        for(Account acc : accList){
            if(acc.AnnualRevenue <= 1000){
                acc.AnnualRevenue.addError('Annual Revenue Cannot be less Than 1000');                
            }
        }
    }
    //Restrict users from changing name once a record is created.
    public static void RestrictNameChange(List<Account> accList , Map<Id, Account> oldMap){
        for(Account newacc : accList){
            if(newacc.Name != oldMap.get(newacc.Id).Name){
                newacc.Name.addError('Account Name cannot be Modified once created');
            }
        }
    }
    //whenever account phone field is updated then populate description field as new no. & old no.
    public static void updateDescription(List<Account> accList , Map<Id, Account> oldMap){
        for(Account newacc : accList){
            if(newacc.Phone != oldMap.get(newacc.Id).Phone){
                newacc.Description = 'Phone is update !!'+'New Value = '+newacc.Phone +'old value = '+ oldMap.get(newacc.Id).Phone;
            }
        }
    }
    //write a trigger to create a Contact automatically whenever a new Account is Inserted.
    public static void insertContact(List<Account> accList){
        List<Contact> conList = new List<Contact>();
        for(Account acc : accList){
            contact con = new contact();
            con.AccountId = acc.Id;
            con.LastName = acc.Name + 'con';
            conList.add(con);
        }
        if(!conList.isEmpty()){
            insert conList;
        }
    }
    // write a trigger to prevent rating hot when new account creatation.
    public static void preventhot(List<Account> accList){
        for(Account acc : accList){
            if(acc.Rating == 'Hot' && acc.Rating == NULL){
                acc.addError('account should not be created with rating hot');             
            }
        }        
    }   
}