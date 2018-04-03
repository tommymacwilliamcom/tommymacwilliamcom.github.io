package com.tommymacwilliam.section5app1;

import android.app.Activity;
import android.os.Bundle;
import android.view.ViewGroup.LayoutParams;
import android.widget.LinearLayout;
import android.widget.Button;
import android.view.View;
import android.widget.Toast;
import android.widget.TextView;
import android.content.Intent;
import android.net.Uri;

public class Dialer extends Activity implements View.OnClickListener {
	private String number = "";
	final int TEXTVIEW_ID = 0;
	final int BTN_CALL_ID = 10;
	
	/** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.dialer);
        LinearLayout root = (LinearLayout)this.findViewById(R.id.dialerRoot);
        
        // create text view to hold number
        TextView tv = new TextView(this);
        tv.setId(TEXTVIEW_ID);
        tv.setText("Dial a number!");
        root.addView(tv);
        
        // create grid of numbers
        int digit = 1;
        for (int i = 0; i < 3; i++) {
        	// create new row
        	LinearLayout layout = new LinearLayout(this);
        	layout.setOrientation(LinearLayout.HORIZONTAL);
        	// create 3 buttons per row
        	for (int j = 0; j < 3; j++) {
        		Button button = new Button(this);
        		button.setText(String.valueOf(digit));
        		button.setId(digit);
        		button.setOnClickListener(this);
        		button.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.FILL_PARENT, LayoutParams.FILL_PARENT, 1));
        		layout.addView(button);
        		digit++;
        	}
        	root.addView(layout);
        }
        
        // create button to initiate call
        Button btnCall = new Button(this);
        btnCall.setId(BTN_CALL_ID);
        btnCall.setText("Call");
        btnCall.setOnClickListener(this);
        root.addView(btnCall);
    }
    
    @Override
    public void onClick(View v) {
    	// number pad press
    	if (v.getId() > 0 && v.getId() < 10) {
    		number += ((Button)v).getText();    	
    		TextView tv = (TextView)this.findViewById(0);
    		tv.setText(number);
    	}
    	// call button press
    	else {
    		Intent i = new Intent(Intent.ACTION_DIAL, Uri.parse("tel:" + number));  
    		this.startActivity(i);
    	}
    }
}
