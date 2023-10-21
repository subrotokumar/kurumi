gen:
	rm -r lib\core\assets || \
	fluttergen.bat -c pubspec.yaml
	mv ./lib/core/assets/assets.gen.dart ./lib/core/assets/assets.dart 