void main() {
	bool result;

	result = enableFlags(true, true);
	print(result);

}

bool enableFlags(bool ? bold, bool? hidden) {
	return (bold ?? false) && (hidden ?? false);
}
