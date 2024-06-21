import 'package:connectivity_plus/connectivity_plus.dart';

Future<bool> isInternetAvailable() async {
  final connectivity = Connectivity();
  final List<ConnectivityResult> connectivityResult =
      await connectivity.checkConnectivity();
  return (connectivityResult.indexWhere((element) =>
          element == ConnectivityResult.mobile ||
          element == ConnectivityResult.wifi ||
          element == ConnectivityResult.ethernet) !=
      -1);
}
