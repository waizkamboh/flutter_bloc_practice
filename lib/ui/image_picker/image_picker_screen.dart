import 'dart:io';

import 'package:bloc_flutter/bloc/image_picker/image_picker_bloc.dart';
import 'package:bloc_flutter/bloc/image_picker/image_picker_event.dart';
import 'package:bloc_flutter/bloc/image_picker/image_picker_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImagePickerScreen extends StatelessWidget {
  const ImagePickerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image picker bloc'),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<ImagePickerBloc, ImagePickerState>(
                builder: (context, state) {
                  if(state.file == null) {
                    return InkWell(
                      onTap: (){
                        context.read<ImagePickerBloc>().add(CameraCaptureEvent());
                      },
                      child: CircleAvatar(
                        child: Icon(Icons.camera),
                      ),
                    );
                  }else {
                    return Image.file(File(state.file!.path.toString()));
                  }
                }
            ),
            SizedBox(height: 30,),
            BlocBuilder<ImagePickerBloc, ImagePickerState>(
                builder: (context, state) {
                  if(state.fileGallery == null) {
                    return InkWell(
                      onTap: (){
                        context.read<ImagePickerBloc>().add(GalleryPickerEvent());
                      },
                      child: CircleAvatar(
                        child: Icon(Icons.browse_gallery),
                      ),
                    );
                  }else {
                    return Image.file(File(state.fileGallery!.path.toString()));
                  }
                }
            ),
          ],
        ),
      )

    );
  }
}
