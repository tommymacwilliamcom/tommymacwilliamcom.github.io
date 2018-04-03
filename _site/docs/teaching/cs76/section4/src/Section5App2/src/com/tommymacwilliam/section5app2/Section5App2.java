package com.tommymacwilliam.section5app2;

import android.app.Activity;
import android.os.Bundle;
import android.widget.Button;
import android.content.Intent;
import android.view.View;
import android.widget.Toast;

public class Section5App2 extends Activity implements View.OnClickListener {
	final int REQUEST_CODE = 1;
	
    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        
        Button button = (Button)this.findViewById(R.id.button);
        button.setOnClickListener(this);
    }
    
    @Override
    public void onClick(View v) {
    	// go to data entry activity on button click
    	Intent i = new Intent(this, DataEntry.class);
    	this.startActivityForResult(i, REQUEST_CODE);
    }
    
    @Override
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
    	// make sure request codes match and result code is correct
    	if (requestCode == REQUEST_CODE && resultCode == RESULT_OK) {
    		// show entered data
    		Toast.makeText(this, data.getExtras().getString("message"), Toast.LENGTH_LONG).show();
    	}
    }
}