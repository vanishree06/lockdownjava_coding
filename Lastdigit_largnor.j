import java.io.*; 
import java.math.*; 

class GFG 
{ 

	// Function to find b % a 
	static int Modulo(int a, char b[]) 
	{  
		int mod = 0;  
		// b like 0 <= b < a 
		for (int i = 0; i < b.length; i++) 
			mod = (mod * 10 + b[i] - '0') % a; 

		return mod;  
	} 
	static int LastDigit(char a[], char b[]) 
	{ 
		int len_a = a.length, len_b = b.length; 
		if (len_a == 1 && len_b == 1 && b[0] == '0' && a[0] == '0') 
			return 1; 
		if (len_b == 1 && b[0] == '0') 
			return 1;  
		if (len_a == 1 && a[0] == '0') 
			return 0; 

		// if exponent is divisible by 4 that means last 
		// digit will be pow(a, 4) % 10. 
		// if exponent is not divisible by 4 that means last 
		// digit will be pow(a, b%4) % 10 
		int exp = (Modulo(4, b) == 0) ? 4 : Modulo(4, b);  
		int res = (int)(Math.pow(a[len_a - 1] - '0', exp)); 
		return res % 10; 
	}  
	public static void main(String args[]) throws IOException 
	{ 
		char a[] = "117".toCharArray(), b[] = { '3' }; 
		System.out.println(LastDigit(a, b)); 
	} 
}
