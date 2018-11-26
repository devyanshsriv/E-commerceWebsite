public class StringReverse {
  
  
    public static void main(String args[]) {
        String word = "My name is Bhanoo";
        String reverse = reverse(word);
        System.out.printf("original String : %s", word);
        System.out.println();
        System.out.printf("reversed String : %s %n",reverse);
    }   
  
  
    public static String reverse(String source){
        if(source == null || source.isEmpty()){
            return source;
        }       
        String reverse = "";
        for(int i = source.length() -1; i>=0; i--){
            reverse = reverse + source.charAt(i);
        }
      
        return reverse;
    }
    
}