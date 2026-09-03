public class LeadHandler {
     public static void setRating(List<Lead> leadList){
         for(Lead l : leadList){
             if(l.LeadSource == 'web'){
                 l.Rating = 'Hot';
             }
         }
     }
}