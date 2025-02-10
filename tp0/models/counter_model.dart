
class CounterModel {

  int counter = 0;
  CounterModel({this.counter = 0});


  void incrementCounter() {
    counter++;
  }


  void decrementCounter() {
    counter--;
  }

  int getCounter(){
    return this.counter;
  }

}