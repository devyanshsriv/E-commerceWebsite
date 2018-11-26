
public class AddSubPattern {

	public static void main(String[] args) {
		double sum = 0;
		int k=1;
		for (double i = 1; i <= 10; i++) {
			sum += ((1 / i) * k);
			k = k * -1;
		}
		System.out.println(sum);
	}
}
