public class ApexExamples {
    public static void swapping(Integer x, Integer y){
        system.debug('before swapping == '+ 'x == '+x + 'y =='+y);
        Integer temp;
        temp = x;
        x=y;
        y = temp;
        system.debug('after swapping == '+ 'x == '+x + 'y == '+y);
    }
    public static void evenodd(Integer num){
        if(Math.mod(num ,2) == 0){
            system.debug(num + 'is a even number');      
        }
        else{
            system.debug(num + 'is a odd number');
        }
    }
    public static void largestnumber(Integer x,Integer y,Integer z){
        if((x>y)&&(x>z)){
            system.debug(x + ' x is large number');
        }
        else if((y>x)&&(y>z)){
            system.debug(y + ' y is large number');
        }
        else{
            system.debug(z + ' z is large number');
        }
    }
    public static void sumofdigits(Integer num){
        Integer sum = 0;
        while(num > 0){
            Integer reminder = Math.mod(num, 10);
            sum = sum + reminder;
            num = num/10;            
        }
        system.debug('sum of is = ' + sum);         
    }
    public static void multiplication(Integer num){
        Integer mul;
        for(Integer i = 1; i<=10; i++){
            mul = num * i;
            system.debug('multiplication of '+num+'x'+i+'='+mul);
        }      
    }
}