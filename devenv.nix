{ pkgs, lib, config, inputs, ... }:

{
  # env.GREET = "devenv";
  env.CHROME_EXECUTABLE = "${pkgs.google-chrome}/bin/google-chrome-stable";

  android = {
    enable = true;
    flutter.enable = true;
  };

  packages = [
    # pkgs.firebase-tools
    pkgs.jdk21          # required by Firestore, Auth, and most Firebase emulators (firebase-tools requires JDK 21+)
  ];

  enterShell = ''
    # Override the Android module's JDK 17 — firebase-tools requires JDK 21+
    export JAVA_HOME="${pkgs.jdk21}/lib/openjdk"
    export PATH="${pkgs.jdk21}/bin:$PATH"
    git --version
    flutter --version
    java -version
  '';
}
