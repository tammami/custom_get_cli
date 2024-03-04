import 'package:recase/recase.dart';

import '../interface/sample_interface.dart';

/// [Sample] file from Module_Controller file creation.
class ControllerSample extends Sample {
  final String _fileName;
  final bool _isServer;
  ControllerSample(String path, this._fileName, this._isServer,
      {bool overwrite = false})
      : super(path, overwrite: overwrite);

  @override
  String get content => _isServer ? serverController : flutterController;

  String get serverController => '''import 'package:get_server/get_server.dart';

class ${_fileName.pascalCase}Controller extends GetxController {

}
''';
  String get flutterController => '''import 'package:get/get.dart';

class ${_fileName.pascalCase}Controller extends GetxController {
  
}
''';
}
