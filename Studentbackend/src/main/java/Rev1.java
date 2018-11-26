import java.util.Scanner;

public class Rev1 {
	public static void main(String[] args) {
		int p = 0;
		String S2 =" ";
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter the String:");
		String s = sc.nextLine();
		for (int i = 0; i < s.length(); i++) {
			if (s.charAt(i) ==' ') {
				S2 = S2 + new StringBuffer(s.substring(p, i)).reverse().toString() + " ";
				p = i + 1;
			}
		}
		S2 = S2 + new StringBuffer(s.substring(p, s.length())).reverse().toString();
		System.out.println(S2);
	}
}