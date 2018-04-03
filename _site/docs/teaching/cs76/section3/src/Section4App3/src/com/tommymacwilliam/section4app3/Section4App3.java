package com.tommymacwilliam.section4app3;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;

public class Section4App3 extends Activity {
    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        
        // attach first interpolation animation to first button
        final Button button1 = (Button) this.findViewById(R.id.button1);
        button1.setOnClickListener(new View.OnClickListener() {
			@Override
			public void onClick(View v) {
				Animation a = AnimationUtils.loadAnimation(Section4App3.this, R.anim.interpolation1);
		        button1.startAnimation(a);
			}
		});
        
        // attach second interpolation animation to second button
        final View button2 = this.findViewById(R.id.button2);
        button2.setOnClickListener(new View.OnClickListener() {
			@Override
			public void onClick(View v) {
				Animation a = AnimationUtils.loadAnimation(Section4App3.this, R.anim.interpolation2);
		        button2.startAnimation(a);
			}
		});
        
        // attach third interpolation animation to third button
        final View button3 = this.findViewById(R.id.button3);
        button3.setOnClickListener(new View.OnClickListener() {
			@Override
			public void onClick(View v) {
				Animation a = AnimationUtils.loadAnimation(Section4App3.this, R.anim.interpolation3);
		        button3.startAnimation(a);
			}
		});
    }
}