package com.tommymacwilliam.section4app2;

import android.app.Activity;
import android.os.Bundle;
import android.view.*;
import android.widget.Button;
import android.view.animation.*;

public class Section4App2 extends Activity {
    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        
        // attach first animation to first button
        final Button button1 = (Button) this.findViewById(R.id.button1);
        button1.setOnClickListener(new View.OnClickListener() {	
			@Override
			public void onClick(View v) {
				Animation a = AnimationUtils.loadAnimation(Section4App2.this, R.anim.animation1);
		        button1.startAnimation(a);
			}
		});
        
        // attach second animation to second button
        final View button2 = this.findViewById(R.id.button2);
        button2.setOnClickListener(new View.OnClickListener() {
			@Override
			public void onClick(View v) {
				Animation a = AnimationUtils.loadAnimation(Section4App2.this, R.anim.animation2);
		        button2.startAnimation(a);
			}
		});
        
        // attach third animation to third button
        final Button button3 = (Button) this.findViewById(R.id.button3);
        button3.setOnClickListener(new View.OnClickListener() {
			
			@Override
			public void onClick(View v) {
				Animation a = AnimationUtils.loadAnimation(Section4App2.this, R.anim.animation3);
				// attach an animation callback
				a.setAnimationListener(new Animation.AnimationListener() {
					@Override
					public void onAnimationStart(Animation animation) {
						
					}
					
					@Override
					public void onAnimationRepeat(Animation animation) {
						
					}
					
					@Override
					public void onAnimationEnd(Animation animation) {
						// when animation finishes, double size of button
						button3.setWidth(button3.getWidth() * 2);
						button3.setHeight(button3.getHeight() * 2);
						button3.setTextSize(button3.getTextSize() * 2);
					}
				});
		        button3.startAnimation(a);
			}
		});
    }
}