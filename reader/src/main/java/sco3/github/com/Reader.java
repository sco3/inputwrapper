package sco3.github.com;

import java.io.BufferedReader;
import java.io.InputStreamReader;

public class Reader {
	public static void main(String[] argv) throws Exception {
		try (BufferedReader in = new BufferedReader(new InputStreamReader(System.in))) {
			String input = in.readLine();
			System.out.println("Input: " + input);
		}
	}
}
