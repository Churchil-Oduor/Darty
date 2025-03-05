import 'dart:convert';
import 'dart:math';


class ApiKey {
	
	late String key;

	String generateBase64Hash() {
		var random = Random.secure();
		var values = List<int>.generate(32, (i) => random.nextInt(256));

		return base64Url.encode(values);
	}

	void setKey() {
		key = this.generateBase64Hash();

	}

	void printKey() {
		this.setKey();
		print("Key: $key");
	}
}
void main() {
	ApiKey key = ApiKey();
	key.printKey();
}
