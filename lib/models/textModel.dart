class TextModel {
  String script;

  TextModel(this.script);

  static List<TextModel> scriptData() {
    return [
      TextModel("Update Progress \n Your Work for The \n Team"),
      TextModel("Create a Task and Assign it to Your Team Members"),
      TextModel("Get Notified when you Get a New Assignment"),
    ];
  }
}
