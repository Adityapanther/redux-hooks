class ApplicationState {
  int counter;
  ApplicationState(this.counter);

  static ApplicationState initialState() {
    return ApplicationState(0);
  }
}
