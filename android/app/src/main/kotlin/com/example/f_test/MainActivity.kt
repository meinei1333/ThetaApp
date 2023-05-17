package com.example.ThetaApp

import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity() {
    super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        MobileAds.initialize(this) {}
}
