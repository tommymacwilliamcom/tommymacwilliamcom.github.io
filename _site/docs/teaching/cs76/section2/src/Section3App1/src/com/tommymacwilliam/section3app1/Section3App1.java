package com.tommymacwilliam.section3app1;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.content.Intent;

public class Section3App1 extends Activity {
    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        
        // bind onclick event to the button
        View button = this.findViewById(R.id.button);
        button.setOnClickListener(new View.OnClickListener() {

			public void onClick(View v) {
				// show the Hello activity
				Intent i = new Intent(Section3App1.this, Hello.class);
				startActivity(i);
			}
		});
    }
}