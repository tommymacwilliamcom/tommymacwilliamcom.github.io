package com.tommymacwilliam.section5app7;

import android.app.ListActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.ListView;
import android.widget.AdapterView;
import android.widget.Toast;
import android.widget.TextView;
import java.util.ArrayList;

public class Section5App7 extends ListActivity implements AdapterView.OnItemClickListener {
    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        // create an ArrayList of names
        ArrayList<String> names = new ArrayList<String>();
        names.add("Tommy");
        names.add("Dan");
        names.add("David");
        
        // create an ArrayList of descriptions
        ArrayList<String> descriptions = new ArrayList<String>();
        descriptions.add("Head TF");
        descriptions.add("Instructor");
        descriptions.add("Instructor");
        
        // use our custom adapter that displays two TextViews
        CustomAdapter adapter = new CustomAdapter(this, R.layout.list_item, 
        		R.id.adapterTextView, names, descriptions);
        setListAdapter(adapter);   
        
        // bind events the same ways
        ListView l = this.getListView();
        l.setOnItemClickListener(this);
    }
    
    @Override
    public void onItemClick(AdapterView<?> parent, View v, int position, long id) {
    	// get the values of our TextViews
    	TextView name = (TextView)v.findViewById(R.id.adapterTextView);
    	TextView description = (TextView)v.findViewById(R.id.adapterTextViewDescription);
    	
    	// display name and description
    	Toast.makeText(this, name.getText() + " (" + description.getText() + ")", 
    			Toast.LENGTH_LONG).show();
    }
}