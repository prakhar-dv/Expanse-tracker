import 'package:google_mobile_ads/google_mobile_ads.dart';

class AppOpenAdManager {
  static AppOpenAd? _appOpenAd;

  static Future<void> loadAd() async {
    await AppOpenAd.load(
      adUnitId: "ca-app-pub-2273231841018440/7229528764",
      request: const AdRequest(),
      adLoadCallback: AppOpenAdLoadCallback(
        onAdLoaded: (ad) {
          _appOpenAd = ad;
          _appOpenAd?.show();
        },
        onAdFailedToLoad: (error) {
          print("AppOpenAd Failed: $error");
        },
      ),
      orientation: AppOpenAd.orientationPortrait,
    );
  }
}
