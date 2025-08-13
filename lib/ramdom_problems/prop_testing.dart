///This extension should be used in any case where you need to set the
///component height and width!
///
///This extension will set the proportional height and width according the
///propotype screen sizes.
///
///Copy and paste the next import where you need to set the component/screen sizes:
///import 'package:hubla/shared/infrastructure/extensions/app_sizes_extensions.dart';

void main() {
  var height = 36.propHeight();
  print(height);
}

extension AppProportionalSizesExtension on num {
  static int prototypeHeight = dynamicHeightScreen();
  static int protypeWidth = dynamicWidthScreen();

  static int dynamicHeightScreen() {
    const int smartPhoneHeight = 812;
    const int tabletHeight = 1024;
    const int webHeight = 812;

    const int phoneSizeHeightLimit = 850;
    const int tabletSizeHeightLimit = 1024;

    if (500 <= phoneSizeHeightLimit) {
      return smartPhoneHeight;
    } else if (800 <= tabletSizeHeightLimit) {
      return tabletHeight;
    } else {
      return webHeight;
    }
  }

  static int dynamicWidthScreen() {
    const int smartPhoneWidth = 375;
    const int tabletWidth = 768;
    const int webWidth = 375;

    const int phoneSizeWidthLimit = 400;
    const int tabletSizeWidthLimit = 800;

    if (360 <= phoneSizeWidthLimit) {
      return smartPhoneWidth;
    } else if (360 <= tabletSizeWidthLimit) {
      return tabletWidth;
    } else {
      return webWidth;
    }
  }

  double propHeight() {
    return dynamicHeightScreen() * (this / prototypeHeight);
  }

  double propWidth() {
    return dynamicWidthScreen() * (this / protypeWidth);
  }

  double propBasedOnHeight() {
    return dynamicHeightScreen() * (this / prototypeHeight);
  }

  double propBaseOnWidth() {
    return dynamicWidthScreen() * (this / protypeWidth);
  }

  double screenHeightPercentage() {
    return (dynamicHeightScreen() * (this / 100));
  }

  double screenWidthPercentage() {
    return (dynamicWidthScreen() * (this / 100));
  }

  double screenPercentage({bool basedOnWidth = false}) {
    if (basedOnWidth) {
      return (dynamicWidthScreen() * (this / 100));
    } else {
      return (dynamicHeightScreen() * (this / 100));
    }
  }
}
