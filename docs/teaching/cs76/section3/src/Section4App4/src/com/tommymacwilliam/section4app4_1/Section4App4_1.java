package com.tommymacwilliam.section4app4_1;

import android.app.Activity;
import android.os.Bundle;
import android.content.Intent;
import android.net.Uri;

public class Section4App4_1 extends Activity {
    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        
        // create an intent to dial a number, let user pick appropriate activity
        Intent i = new Intent(Intent.ACTION_DIAL, Uri.parse("tel://1234568790"));
        this.startActivity(i);
    }
}