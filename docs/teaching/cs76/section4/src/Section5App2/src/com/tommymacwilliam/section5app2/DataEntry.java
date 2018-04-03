package com.tommymacwilliam.section5app2;

import android.app.Activity;
import android.os.Bundle;
import android.widget.Button;
import android.view.View;
import android.content.Intent;
import android.widget.EditText;

public class DataEntry extends Activity implements View.OnClickListener {
	@Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.data_entry);
        
        // add event listener to button
        Button b = (Button)this.findViewById(R.id.btnDone);
        b.setOnClickListener(this);
    }
	
	@Override
	public void onClick(View v) {
		// done button click
		if (v.getId() == R.id.btnDone) {
			// get text in textbox
			EditText et = (EditText)this.findViewById(R.id.textView);
			
			// get intent used to navigate to this activity
			Intent i = getIntent();
			
			// create a new bundle to hold data
			Bundle bundle = new Bundle();
			// set key/value to current text of textbox
			bundle.putString("message", et.getText().toString());
			i.putExtras(bundle);
			
			// send intent back and navigate to original activity
			setResult(RESULT_OK, i);
			finish();
		}
	}
}
