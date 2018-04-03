package com.tommymacwilliam.section5app6;

import android.app.Activity;
import android.os.Bundle;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import java.util.HashMap;

public class Section5App6 extends Activity {
    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        
        // get views from layout
        LinearLayout root = (LinearLayout)this.findViewById(R.id.root);
        TextView tv = (TextView)this.findViewById(R.id.textView);
        
        // create a map to hold key/value pairs
        HashMap<String, Integer> map = new HashMap<String, Integer>();
        // add a few items
        map.put("tommy", 1);
        map.put("alycia", 2);
        // set the map as the tag of the textview
        tv.setTag(map);
        
        // get the tag from the textView
        HashMap<String, Integer> tag = (HashMap<String, Integer>)tv.getTag();
        // display contents of a tag value
        Toast.makeText(this, String.valueOf(tag.get("tommy")), Toast.LENGTH_LONG).show();
        
        // find the textview with this tag (the only one)
        TextView tv2 = (TextView)root.findViewWithTag(map);
        // display property of the textview
        Toast.makeText(this, tv2.getText(), Toast.LENGTH_LONG).show();
        
    }
}