import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerState extends Equatable {
  final XFile? file;
  final XFile? fileGallery;

  const ImagePickerState({this.file, this.fileGallery});

  ImagePickerState copyWith({XFile? file, XFile? fileGallery}){
    return ImagePickerState(
      file: file ?? this.file,
      fileGallery: fileGallery ?? this.fileGallery,
    );
  }

  @override
  List<Object?> get props => [file, fileGallery];
}
