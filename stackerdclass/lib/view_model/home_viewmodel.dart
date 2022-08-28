import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  int count = 0;

  addcounter() {
    count++;
    print(count);
    notifyListeners();
  }
}
