package com.tommymacwilliam.section5app3;

import android.app.Activity;
import android.os.Bundle;
import android.view.*;
import android.widget.*;
import android.view.ContextMenu.ContextMenuInfo;

public class Section5App3 extends Activity {
    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        
        this.registerForContextMenu(this.findViewById(R.id.button));
    }
    
    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
    	MenuInflater inflater = getMenuInflater();
    	inflater.inflate(R.menu.options_menu, menu);
    	return true;
    }
    
    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
    	Toast.makeText(this, item.getTitle(), Toast.LENGTH_LONG).show();
    	return true;
    }
    
    @Override
    public void onCreateContextMenu(ContextMenu menu, View v, ContextMenuInfo menuInfo) {
    	menu.setHeaderTitle("Context Menu");
    	MenuInflater inflater = getMenuInflater();
    	inflater.inflate(R.menu.options_menu, menu);    	
    }
    
    @Override
    public boolean onContextItemSelected(MenuItem item) {
    	Toast.makeText(this, item.getTitle(), Toast.LENGTH_LONG).show();
    	return true;
    }
}