package sco3.github.com;

import java.io.ByteArrayInputStream;

public class Wrapper {
	public static void main(String[] args) throws Exception {

		System.setIn(new ByteArrayInputStream("asdf\n".getBytes()));
		Reader.main(args);
	}

}