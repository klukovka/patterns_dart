class Editor {
  String text = '';

  String getSelection() {
    return text;
  }

  void deleteSelection() {
    text = '';
  }

  void pasteSelection(String text) {
    this.text += text;
  }
}
