package util;

public abstract class DataEncriptor {
	private DataEncriptor() {
	};

	public static String doEncriptStr(String str) {
		byte[] charStr = str.getBytes();
		for (int i = 0; i < charStr.length; i++) {
			charStr[i] = (byte) (charStr[i] + 150);
		}
		return new String(charStr);
	}

	public static String doDeencriptStr(String str) {
		byte[] charStr = str.getBytes();
		for (int i = 0; i < charStr.length; i++) {
			charStr[i] = (byte) (charStr[i] - 150);
		}
		return new String(charStr);
	}

}
