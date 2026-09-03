public class Test1 {
    public static integer customerId = 24;// static varible
    public String customerName= 'likky', customerAge= 'twenty', customerState='telangana';// instance varible
    public date joiningDate= system.Today(), dateOfBirth= Date.newInstance(2002,02,28);
    
    public void Textme(){
        system.debug('Id numberuuuu :'+ customerId);// local varibale
        system.debug('Customer Nameuu :'+ customerName);
        system.debug('Customer Age :'+ customerAge);
        system.debug('Customer Stateuu :'+ customerState);
        system.debug('Customer joining Date:'+ joiningDate);
        system.debug('Customer Date of Birth :'+ dateOfBirth);
    }
        
    public void method1(){
        integer i;
        i = 40;
        system.debug(i);
        decimal dec = 24.35;
        double dou = 711.335;
        system.debug(dec);
        system.debug(dou);
        Long k = 12345678901L;
        system.debug(k);
        Date da = Date.Today();
        system.debug(da);
        system.debug(da.addDays(10));
        da = Date.newInstance(2026,02,28);
        system.debug(da);
        time t = time.newInstance(19,57,24,11);
        system.debug(t);
        system.debug(t.addHours(2));
        DateTime dt = DateTime.newInstance(2002,02,28,04,24,03);
        system.debug(dt);
        String greetings = 'Hello';
        system.debug(greetings);
        Boolean isActive = true;        
    }
    public void method2(){
        string str ='hello macha, welcome to naa sabhaa';
        system.debug(str);
        system.debug(str.contains('macha'));
        system.debug(str.capitalize());
        system.debug(str.deletewhitespace());
        string str2 = 'welcome';
        system.debug(str.equals(str2));
        system.debug(str.indexofany('w'));
        system.debug(string.isempty(str));
        system.debug(str.length());
        system.debug(str.reverse());
        system.debug(str.remove('macha'));
        system.debug(str.trim());
        
    }
    public void method3(){
        string s = ' I \t love\'s my India.\n my apex classe\'s';// Escape sequence
        system.debug(s);
    }
}