import java.util.Scanner;

public class Rev {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter the String:");
		String s = sc.nextLine();
		int p = s.length();
		String S2 =" ";
		for (int i = s.length() - 1; i >= 0; i--) {
			if (s.charAt(i) ==' ') {
				S2 = S2 + s.substring((i + 1), p) + " ";
				p = i;
			}
		}
		S2 = S2 + s.substring(0, p);
		System.out.println(S2);
	}
}