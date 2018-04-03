package com.tommymacwilliam.section5app5;

import android.app.ListActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.AdapterView;
import android.widget.Toast;
import android.widget.TextView;

public class Section5App5 extends ListActivity implements AdapterView.OnItemClickListener {
    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        
        // get array from res/values/strings.xml
        String[] teams = this.getResources().getStringArray(R.array.teams);
        // create new array adapter to hold data from string array
        ArrayAdapter<String> adapter = new ArrayAdapter<String>(this, R.layout.list_item, teams);
        // set adapter as list adapter for this view
        setListAdapter(adapter);
        
        ListView l = this.getListView();
        l.setOnItemClickListener(this);
    }
    
    @Override
    public void onItemClick(AdapterView<?> parent, View v, int position, long id) {
    	// we know the view must be a TextView, so display text
    	Toast.makeText(this, ((TextView)v).getText(), Toast.LENGTH_LONG).show();
    }
}