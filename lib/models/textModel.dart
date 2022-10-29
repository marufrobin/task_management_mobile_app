class TextModel {
  String script;

  TextModel(this.script);

  static List<TextModel> scriptData() {
    return [
      TextModel("Update Progress \nYour Work for The \nTeam"),
      TextModel("Create a Task and Assign it to Your Team Members"),
      TextModel("Get Notified when \nyou Get a New \nAssignment"),
    ];
  }
}
