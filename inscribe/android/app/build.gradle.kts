plugins {
    id ("com.android.application")
    // START: FlutterFire Configuration
    id ("com.google.gms.google-services")
    id ("com.google.firebase.firebase-perf")
    id ("com.google.firebase.crashlytics")
    // END: FlutterFire Configuration
    id ("kotlin-android")
    id ("dev.flutter.flutter-gradle-plugin")
}

import java.util.Properties
import java.io.FileInputStream


val localProperties = Properties()
val localPropertiesFile = rootProject.file("local.properties")
if (localPropertiesFile.exists()) {
    localPropertiesFile.inputStream().use { stream ->
        localProperties.load(stream)
    }
}

val keystoreProperties = Properties()
val keystorePropertiesFile = rootProject.file("keystore.properties")
if (keystorePropertiesFile.exists()) {
    FileInputStream(keystorePropertiesFile).use { stream ->
        keystoreProperties.load(stream)
    }
}

android {
    namespace = "com.tarapogancev.inscribe"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_17.toString()
    }

    defaultConfig {
        applicationId = "com.tarapogancev.inscribe"
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    signingConfigs {
        create("release") {
            keyAlias = keystoreProperties["RELEASE_KEY_ALIAS"] as String?
            keyPassword = keystoreProperties["RELEASE_KEY_PASSWORD"] as String?

            val storeFilePath = keystoreProperties["RELEASE_STORE_FILE"] as String?
            storeFile = storeFilePath?.let { file(it) }

            storePassword = keystoreProperties["RELEASE_STORE_PASSWORD"] as String?
        }
    }


    buildTypes {
        release {
            isMinifyEnabled = false
            isShrinkResources = false

            if (keystoreProperties["RELEASE_KEY_ALIAS"] == null) {
                 signingConfig = signingConfigs.getByName("debug")
            } else {
                 signingConfig = signingConfigs.getByName("release")
            }
        }
    }
}

flutter {
    source = "../.."
}
