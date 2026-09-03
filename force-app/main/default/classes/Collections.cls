public class Collections {
    public static void ListDemo(){
        List<integer> intlist = new List<integer>();
        intlist.add(1100);
        intlist.add(2100);
        intlist.add(3100);
        intlist.add(4100);
        intlist.add(5100);
        system.debug('the number list are'+ intlist);
        
        List<integer> intlist2 = new List<integer>{2,4,6,8,10};
            system.debug('the number list2 are'+ intlist2);
        intlist2.add(0,11);
        system.debug('the number list2 are'+ intlist2);
        intlist2.addAll(intlist);
        system.debug('all numbers :'+ intlist2 );
        system.debug('list2 :'+ intlist2.get(6) );
        system.debug('list2 :'+ intlist2.size());
        system.debug('list2 :'+ intlist2.remove(2));
        intlist2.set(4,1);
        system.debug('list2 :'+ intlist2);
        intlist2.sort();
        system.debug('list2 :'+ intlist2);
        system.debug('list2 :'+ intlist2.equals(intlist));
        List<Integer> cloneList = intlist2.clone();
        system.debug('clonedlist'+ cloneList);
        system.debug('list2 :'+ intlist2.clone());
        intlist2.clear();
        system.debug('list2 :'+ intlist2);       
    }  
    public static void SetDemo(){
        set<Integer> intSet = new set<Integer>();
        intSet.add(2025);
        intSet.add(20);
        intSet.add(2025);
        intSet.add(25);
        intSet.add(5);
        intSet.add(2 );
        system.debug('intset : '+ intSet);
        List<integer> intlist2 = new List<integer>{2,4,6,8,10};
        intSet.addAll(intlist2);
        system.debug('intset : '+ intSet);
        system.debug('intset : '+ intSet.contains(4));
              
    }
    public static void MapDemo(){
        Map<Integer, String> m1 = new Map<Integer, string>();
        m1.put(1, 'uk');
        m1.put(2, 'usa');
        m1.put(3, 'india');
        m1.put(4, 'usa');
        system.debug('m1 :'+ m1);
        system.debug('m1 :'+ m1.containsKey(3));
        system.debug('m1 :'+ m1.get(2));
        system.debug('m1 :'+ m1.keySet());
        system.debug('m1 :'+ m1.values());           
         
    }
}