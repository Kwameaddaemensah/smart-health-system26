// WHAT: Network Info - check connectivity before API calls:
// Without this check, a user on airplane mode waits for a timeout
// (up to 20 seconds) before seeing an error. With connectivity_plus
// we can detect the offline state in ~50ms and immediately show
// the "No internet connection" state instead of a loading spinner.
//
// IMPORTANT: This is an optimistic pre-check. It confirms a network
// interface exists but not that the server is reachable. Always
// handle DioExceptions too — connectivity can drop mid-request.

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final networkInfoProvider = Provider<NetworkInfo>(
  (ref) => NetworkInfo(),
);

class NetworkInfo {
  final Connectivity _connectivity = Connectivity();

  /// Returns true if any network interface is available.
  Future<bool> get isConnected async {
    final result = await _connectivity.checkConnectivity();
    return result.any((r) => r != ConnectivityResult.none);
  }

  /// Stream of connectivity changes — used by the offline banner widget
  Stream<List<ConnectivityResult>> get onConnectivityChanged =>
      _connectivity.onConnectivityChanged;
}