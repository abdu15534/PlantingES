import 'dart:core';
import 'package:flutter/material.dart';
import 'package:planting_app/src/screens/Instructions.dart';
import '../screens/NewDataFilling.dart';


class UserInfo{
  String _plantingIvironment;
  String _weather;
  String _plant;
  double _plantWidth;
  double _plantHight;
  double _plantStalkWidth;
  int _colorScale;
  String _goal;

  UserInfo(this._plant, this._plantingIvironment){}

  void setWeather(String weather){
    _weather=weather;
  }
 void setPlantType(String t){
    _plant=t;
  }
  void setPlantWidth(double width){
    _plantWidth=width;
  }
  void setPlantHeight(double height){
    _plantHight=height;
  }
  void setPlantStalkWedth(double stalkWidth){
    _plantStalkWidth=stalkWidth;
  }
  void setColorScale(int colorScale){
    _colorScale=colorScale;
  }
  void  setPlantingIvironment(String place){
    _plantingIvironment = place;
  }
  void setGoal(String goal){
    _goal = goal;
  }


  String getWeather(){
    return _weather;
  }
  String getPlantType(){
    return _plant;
  }
  double getPlantWidth(){
    return _plantWidth;
  }
  double getPlantHeight(){
    return _plantHight;
  }
  double getPlantStalkWedth(){
    return _plantStalkWidth;
  }
  int getColorScale(){
    return _colorScale;
  }
  String getPlantingIvironment(){
    return _plantingIvironment;
  }
  String getGoal(){
    return _goal;
  }

  fetchInstructions(context){
    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context){
      return new Instructions(plant: getPlantType(),environmnt: getPlantingIvironment(),);
    }));
  }

}