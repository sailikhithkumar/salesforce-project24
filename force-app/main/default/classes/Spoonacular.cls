public class Spoonacular {
    private static final String SPOONACULAR_API = 'https://api.spoonacular.com';
    private static final String API_KEY = '726d03f682b44dce8a33de740132cf3f';
    
    @AuraEnabled(cacheable=true)
    public static String getRandomRecipe(){
        HttpRequest req = new HttpRequest();
        req.setEndpoint(SPOONACULAR_API+'/recipes/random?apiKey='+API_KEY);
        req.setMethod('GET');
        Http http = new Http();
        HttpResponse res = http.send(req);
        //if request is succesful, parse the Json Response
        System.debug('response code = '+ res.getStatusCode());
        if(res.getStatusCode() == 200){
           return res.getBody();
        }
        return '';
    }
    @AuraEnabled(cacheable=true)
    public static String getRecipe(String recipeId){
        HttpRequest req = new HttpRequest();
        req.setEndpoint(SPOONACULAR_API+'/recipes/'+recipeId+'/information?apiKey='+API_KEY);
        req.setMethod('GET');
        Http http = new Http();
        HttpResponse res = http.send(req);
        //if request is succesful, parse the Json Response
        if(res.getStatusCode() == 200){
           return res.getBody();
        }
        return '';
    }
    @AuraEnabled(cacheable=true)
    public static String getRecipeByIngredients(String ingredients){
        HttpRequest req = new HttpRequest();
        req.setEndpoint(SPOONACULAR_API+'/recipes/findByIngredients?apiKey='+API_KEY+'&ingredients='+ingredients);
        req.setMethod('GET');
        Http http = new Http();
        HttpResponse res = http.send(req);
        //if request is succesful, parse the Json Response
       
        if(res.getStatusCode() == 200){
           return res.getBody();
        }
        return '';
    }

}