class AppSettingsLocal {
  String lang ='ar';

  AppSettingsLocal();

  AppSettingsLocal.fromJson(Map<String,dynamic> map){
    lang = map['lang'];
  }
  Map<String,dynamic> toJson(){
    return {'lang':lang};
  }


}