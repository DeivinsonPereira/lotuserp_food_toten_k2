// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:isar/isar.dart';

part 'image_path.g.dart';

@Collection()
class image_path {
  late Id id = Isar.autoIncrement;
  late String? file_image;
  late String? path_image;
}
