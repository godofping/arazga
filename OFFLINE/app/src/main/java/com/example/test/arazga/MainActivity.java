package com.example.test.arazga;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.media.AudioAttributes;
import android.media.AudioManager;

import android.media.SoundPool;
import android.os.Build;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;

import android.view.View;
import android.webkit.JavascriptInterface;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Toast;
import android.graphics.Bitmap;

public class MainActivity extends AppCompatActivity {

    private WebView mWebView;
    private SoundPool soundPool;
    private int sound1, sound2, sound3, correct, wrong, gameover, music1, music2, music3;

    ProgressDialog dialog;



    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        mWebView = (WebView) findViewById(R.id.activity_main_webview);
//        mWebView.loadUrl("http://www.arazga.tk/mobile/mobile-login.php");
        mWebView.loadUrl("http://192.168.8.116/arazga/mobile/mobile-login.php");

        mWebView.setWebViewClient(new WebViewClient() {
                @Override
                public boolean shouldOverrideUrlLoading(WebView view, String url) {

                    if (url.contains("mobile-logout.php")) {
                       finish();
                        return true;
                    }

                    if(view.getHitTestResult().getType() > 0){
                        // From a user click, handle it yourself.
                        return false;
                    } else {
                        // Nothing clicked, assumed to be a redirect, let it redirect.
                        dialog.dismiss();
                        return false;
                    }

                }

                // This method will be triggered when the Page Started Loading
                @Override
                public void onPageStarted(WebView view, String url, Bitmap favicon) {

                    dialog = ProgressDialog.show(MainActivity.this, null,
                            "Loading");
//                    dialog.setCancelable(true);
                    super.onPageStarted(view, url, favicon);
                }

                // This method will be triggered when the Page loading is completed
                @Override
                public void onPageFinished(WebView view, String url) {
                    dialog.dismiss();

                    super.onPageFinished(view, url);
                }


                // This method will be triggered when error page appear
                @Override
                public void onReceivedError(WebView view, int errorCode,
                String description, String failingUrl) {
                    dialog.dismiss();
                    // You can redirect to your own page instead getting the default
                    // error page
                    Toast.makeText(MainActivity.this,
                            "Internet connection error", Toast.LENGTH_LONG).show();
                    mWebView.loadUrl("file:///android_asset/index.html");
                    super.onReceivedError(view, errorCode, description, failingUrl);
                }


        });


        WebSettings webSettings = mWebView.getSettings();
        webSettings.setJavaScriptEnabled(true);
        mWebView.getSettings().setCacheMode(WebSettings.LOAD_NO_CACHE);
        mWebView.setLayerType(View.LAYER_TYPE_SOFTWARE, null);
        mWebView.addJavascriptInterface(new WebAppInterface(this), "Android");
        mWebView.setScrollBarStyle(View.SCROLLBARS_INSIDE_OVERLAY);



        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.KITKAT) {
            mWebView.setLayerType(View.LAYER_TYPE_HARDWARE, null);
        } else {
            mWebView.setLayerType(View.LAYER_TYPE_SOFTWARE, null);
        }

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            AudioAttributes audioAttributes = new AudioAttributes.Builder()
                    .setUsage(AudioAttributes.USAGE_ASSISTANCE_SONIFICATION)
                    .setContentType(AudioAttributes.CONTENT_TYPE_SONIFICATION)
                    .build();

            soundPool = new SoundPool.Builder()
                    .setMaxStreams(6)
                    .setAudioAttributes(audioAttributes)
                    .build();
        } else {
            soundPool = new SoundPool(6, AudioManager.STREAM_MUSIC, 0);
        }

        sound1 = soundPool.load(this, R.raw.sound1, 1);
        sound2 = soundPool.load(this, R.raw.sound2, 1);
        sound3 = soundPool.load(this, R.raw.sound3, 1);
        correct = soundPool.load(this, R.raw.correct, 1);
        wrong = soundPool.load(this, R.raw.wrong, 1);
        gameover = soundPool.load(this, R.raw.gameover, 1);
        music1 = soundPool.load(this, R.raw.music1, 1);
        music2 = soundPool.load(this, R.raw.music2, 1);
        music3 = soundPool.load(this, R.raw.music3, 1);






    }

    @Override
    public void onBackPressed()
    {
        if(mWebView.canGoBack()){
            mWebView.goBack();
        }else{
            new AlertDialog.Builder(this)
                    .setIcon(android.R.drawable.ic_dialog_alert)
                    .setTitle("Exit!")
                    .setMessage("Are you sure you want to close?")
                    .setPositiveButton("Yes", new DialogInterface.OnClickListener()
                    {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            finish();
                        }

                    })
                    .setNegativeButton("No", null)
                    .show();
        }
    }

    public class WebAppInterface {

        Context mContext;


        WebAppInterface(Context c) {
            mContext = c;
        }

        @JavascriptInterface
        public void changeSound(String toast, String sound) {
            Toast.makeText(mContext, toast, Toast.LENGTH_SHORT).show();

            soundPool.autoPause();

            if (sound.equals("sound1")){
                soundPool.play(sound1, 1, 1, 0, 0, 1);
            }
            if (sound.equals("sound2")){
                soundPool.play(sound2, 1, 1, 0, 0, 1);
            }
            if (sound.equals("sound3")){
                soundPool.play(sound3, 1, 1, 0, 0, 1);
            }

        }

        @JavascriptInterface
        public void changeMusic(String toast, String sound) {

            soundPool.autoPause();

            Toast.makeText(mContext, toast, Toast.LENGTH_SHORT).show();
            if (sound.equals("music1")){

                soundPool.play(music1, 1, 1, 0, 0, 1);

            }
            if (sound.equals("music2")){

                soundPool.play(music2, 1, 1, 0, 0, 1);

            }
            if (sound.equals("music3")){

                soundPool.play(music3, 1, 1, 0, 0, 1);
            }






        }


        @JavascriptInterface
        public void changeBackgroundToast(String toast) {
            Toast.makeText(mContext, toast, Toast.LENGTH_SHORT).show();
        }


        @JavascriptInterface
        public void musicController(String status) {

            if (status.equals("stop")) {
                soundPool.autoPause();
            }
            else
            {
                if (status.equals("music1")){

                    soundPool.play(music1, 1, 1, 0, -1, 1);

                }
                if (status.equals("music2")){

                    soundPool.play(music2, 1, 1, 0, -1, 1);

                }
                if (status.equals("music3")){

                    soundPool.play(music3, 1, 1, 0, -1, 1);
                }
            }
        }



        @JavascriptInterface
        public void playSound(String sound) {



            if (sound.equals("sound1")){
                soundPool.play(sound1, 1, 1, 0, 0, 1);
            }
            if (sound.equals("sound2")){
                soundPool.play(sound2, 1, 1, 0, 0, 1);
            }
            if (sound.equals("sound3")){
                soundPool.play(sound3, 1, 1, 0, 0, 1);
            }
        }

        @JavascriptInterface
        public void playCorrectSound() {
            soundPool.play(correct, 1, 1, 0, 0, 1);
        }

        @JavascriptInterface
        public void playWrongSound() {
            soundPool.play(wrong, 1, 1, 0, 0, 1);
        }

        @JavascriptInterface
        public void playGameOverSound() {
            soundPool.play(gameover, 1, 1, 0, 0, 1);
        }


    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        soundPool.release();
        soundPool = null;
    }

}
