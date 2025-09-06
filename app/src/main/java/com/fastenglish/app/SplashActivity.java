package com.fastenglish.app;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.animation.Animation;
import android.view.animation.ScaleAnimation;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
public class SplashActivity extends AppCompatActivity {
  private static final int SPLASH_DURATION = 1800;
  @Override protected void onCreate(Bundle s){
    super.onCreate(s);
    setContentView(R.layout.activity_splash);
    TextView logo = findViewById(R.id.logoText);
    ScaleAnimation scale = new ScaleAnimation(0.6f,1f,0.6f,1f,Animation.RELATIVE_TO_SELF,0.5f,Animation.RELATIVE_TO_SELF,0.5f);
    scale.setDuration(SPLASH_DURATION); logo.startAnimation(scale);
    new Handler().postDelayed(() -> { startActivity(new Intent(SplashActivity.this, MainActivity.class)); finish(); }, SPLASH_DURATION);
  }
}
