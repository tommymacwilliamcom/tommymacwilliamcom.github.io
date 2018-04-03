package com.tommymacwilliam.section5app4;

import android.app.Activity;
import android.os.Bundle;
import java.lang.reflect.Field;

import android.util.Log;
import android.widget.TextView;

public class Section5App4 extends Activity {
    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        
        // get text view to display data
        TextView tv = (TextView)this.findViewById(R.id.textView);
        
        String text = "";
        // get all fields in ID
        Field fields[] = R.id.class.getFields();
        for (int i = 0; i < fields.length; i++) {
        	try {
        		// get field name, equivalent to text ID of View
        		String name = fields[i].getName();
        		// get field value, equivalent to integer ID of View
        		// we can also say int value = fields[i].getInt(null
        		int value = (Integer)fields[i].get(null);
        		
        		// append value to string to display
        		text += name + "has an ID of: " + String.valueOf(value) + "\n";
        	}
        	catch (IllegalAccessException e) {
        		Log.e("Section5App4", "illegal argument exception");
        	}
        }
        
        tv.setText(text);
    }
}