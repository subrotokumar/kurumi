gen:
	@rm -r lib/src/core/assets || echo "Not Found"
	@fluttergen.bat -c pubspec.yaml
	@mv ./lib/src/core/assets/assets.gen.dart ./lib/src/core/assets/assets.dart 

generate:
	@dart run build_runner clean
	@dart run build_runner build --delete-conflicting-outputs

watch:
	@dart run build_runner watch --delete-conflicting-outputs