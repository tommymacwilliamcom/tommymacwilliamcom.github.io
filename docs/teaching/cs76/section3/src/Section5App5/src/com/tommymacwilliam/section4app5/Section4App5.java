package com.tommymacwilliam.section4app5;

import android.app.Activity;
import android.os.Bundle;
import android.widget.ImageView;

public class Section4App5 extends Activity {
    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        
        // set contents of imageview
        ImageView imageView = (ImageView) this.findViewById(R.id.imageView);
        imageView.setImageResource(R.drawable.icon);
    }
}