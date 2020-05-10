import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Filter with ChangeNotifier{
  int _sokonType;
  int _rythmicWieght;
  int _soundWieght;
  Map params = new Map<String, int>();

  Filter(){
    loadPreferences();
  }

  int get sokonType => _sokonType;

  int get rythmicWieght => _rythmicWieght;

  int get soundWieght => _soundWieght;

  set sokonType(int value) {
    _sokonType = value;
    if(_sokonType!=null){
      params.update('sokonType', (e)=> _sokonType,ifAbsent:()=>_sokonType);
    }
    else params.remove('sokonType');
    notifyListeners();
    savePreferences();
  }

  set rythmicWieght(int value) {
    _rythmicWieght = value;
    if(_rythmicWieght!=null){
      params.update('rythmicWieght', (e)=> _rythmicWieght,ifAbsent:()=>_rythmicWieght);
    }
    else params.remove('rythmicWieght');
    notifyListeners();
    savePreferences();
  }

  set soundWieght(int value) {
    _soundWieght = value;
    if(_soundWieght!=null){
      params.update('soundWieght', (e)=> _soundWieght,ifAbsent:()=>_soundWieght);
    }
    else params.remove('soundWieght');
    notifyListeners();
    savePreferences();
  }

  savePreferences() async{
SharedPreferences prefs = await SharedPreferences.getInstance();
prefs.setInt('sokonType', _sokonType);
prefs.setInt('rythmicWieght', _rythmicWieght);
prefs.setInt('soundWieght', _soundWieght);
  }

  loadPreferences() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int sokonType = prefs.getInt('sokonType');
    int rythmicWieght = prefs.getInt('rythmicWieght');
    int soundWieght = prefs.getInt('soundWieght');

    if(sokonType!=null) _sokonType=sokonType;
    if(rythmicWieght!=null) _rythmicWieght=rythmicWieght;
    if(soundWieght!=null) _soundWieght=soundWieght;
  }
}