class hieradata::android (
	Array[String] $sdk_packages, 
)
{
  $sdk_packages.each |String $sdk_package| {
    exec { "install_android_sdk_package_${sdk_package}":
      command => "cmd.exe /c sdkmanager --install \"${sdk_package}\"",
    }
  }
}
