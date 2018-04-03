package com.tommymacwilliam.section5app7;

import android.widget.ArrayAdapter;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.LayoutInflater;
import android.widget.TextView;
import java.util.ArrayList;

public class CustomAdapter extends ArrayAdapter<String> {
	// ArrayList to hold names and description (model)
	ArrayList<String> names, descriptions;
	// app context
	Context context;
	
	public CustomAdapter(Context context, int textViewId, int layoutId, 
			ArrayList<String> names, ArrayList<String> descriptions) {
		// set up the ArrayAdapter
		super(context, textViewId, layoutId, names);
		
		// save additional data
		this.names = names;
		this.descriptions = descriptions;
		this.context = context;
	}
	
	@Override
	public View getView(int position, View v, ViewGroup parent) {
		// create view if not created yet
		if (v == null) {
			LayoutInflater inflater = LayoutInflater.from(context);
			v = inflater.inflate(R.layout.list_item, null);
		}
		
		// set TextView content based on model data
		TextView name = (TextView)v.findViewById(R.id.adapterTextView);
		TextView description = (TextView)v.findViewById(R.id.adapterTextViewDescription);
		name.setText(names.get(position));
		description.setText(descriptions.get(position));
		
		// display model data in view
		return v;
	}
}
