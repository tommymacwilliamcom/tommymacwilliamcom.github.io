package com.tommymacwilliam.section5app1;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;
import android.view.View;
import android.content.Intent;

public class Section5App1 extends Activity implements View.OnClickListener {
    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        
        // bind event handlers to both buttons
        Button btnNativeDialer = (Button)this.findViewById(R.id.btnNativeDialier);
        btnNativeDialer.setOnClickListener(this);
        Button btnDialer = (Button)this.findViewById(R.id.btnDialier);
        btnDialer.setOnClickListener(this);
    }
    
    @Override
    public void onClick(View v) {
    	Intent i;
    	switch (v.getId()) {
    		case R.id.btnNativeDialier:
    			// show android native dialer
    			i = new Intent(Intent.ACTION_DIAL, null);
    			break;
    		default:
    			// switch to our activity
    			i = new Intent(this, Dialer.class);
    			break;
    	}
    	this.startActivity(i);
    }
}