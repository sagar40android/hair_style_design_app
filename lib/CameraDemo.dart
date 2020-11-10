
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image/image.dart' as Img;
import 'package:path_provider/path_provider.dart';


class CameraDemo extends StatefulWidget {
  @override
  _CameraDemoState createState() => _CameraDemoState();
}

class _CameraDemoState extends State<CameraDemo> {
 File _imageFile;
String _status;
bool _imgLoading;
ImagePicker _imagePicker;

@override
  void initState() {
    super.initState();

    _status = "";
    _imgLoading= false;
    _imagePicker = ImagePicker();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: Text("Camera TEst"),
),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            _imgLoading ? CircularProgressIndicator():
            _imageFile == null ? Container():
                Expanded(child: Image.file(File(_imageFile.path),filterQuality: FilterQuality.high,)),
            SizedBox(height: 20,),
            Text(_status),
            SizedBox(height: 20,),
            _select(),
          ],
        ),
      ),
    );
  }


  _select(){
  return Container(
    padding: EdgeInsets.all(20.0),
    width: MediaQuery.of(context).size.width,
    color: Colors.black12,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _button("Camera", ImageSource.camera),
        SizedBox(height: 10,),
        _button("Gallary", ImageSource.gallery),
      ],
    ),
  );
  }

  _button(String text,ImageSource imageSource){
  return FlatButton(onPressed: () async{
    setState(() {
      _imgLoading=true;
      _imageFile = null;
    });

    File file = await _loadimage(imageSource);

    if(file != null){
      setState(() {
        _imageFile = file;
        _imgLoading= false;
        _status = "Loaded";
      });
      return;
    }

    setState(() {
      _imageFile = null;
      _imgLoading= false;
      _status = "Error";
    });

  },
      child: Text(text));
  }


  Future<File> _loadimage(ImageSource imageSource)async{
  PickedFile file = await _imagePicker.getImage(source: imageSource);
  File pFile;
  if(file != null){
    Directory directory = await getTemporaryDirectory();
    // pFile =await _saveImageSaveToDisk(file.path, directory);
    Map map = Map();
    map["path"] = file.path;
    map["directory"] = directory;
    pFile = await  compute(_saveImageSaveToDisk,map);
  }
  return pFile;
  }


}

Future<File > _saveImageSaveToDisk(Map map) async{

  try{
    // File tempFile = File(path);
    String path = map['path'];
    File tempFile = File(path);
    Directory directory = map['directory'];

    Img.Image image = Img.decodeImage(tempFile.readAsBytesSync());
    Img.Image mImage = Img.copyResize(image,width: 512);
    String imgType = path.split(".").last;
    String mPath =
        '${directory.path.toString()}/image_${DateTime.now()}.$imgType';
    File dFile = File(mPath);
    if (imgType == 'jpg' || imgType == 'jpeg') {
      dFile.writeAsBytesSync(Img.encodeJpg(mImage));
    } else {
      dFile.writeAsBytesSync(Img.encodePng(mImage));
    }
    return dFile;

  }catch(e){}
  return null;
}
