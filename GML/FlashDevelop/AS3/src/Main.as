package 
{
	import com.gestureworks.cml.core.*;
	import com.gestureworks.cml.element.*;
	import com.gestureworks.cml.events.*;
	import com.gestureworks.cml.managers.*;
	import com.gestureworks.cml.utils.*;
	import com.gestureworks.core.*;
	import com.gestureworks.events.*;
	
	[SWF(width = "1280", height = "720", backgroundColor = "0x000000", frameRate = "60")]
	
	public class Main extends GestureWorks
	{		
		public function Main() 
		{		
			super();
			gml = "library/gml/my_gestures.gml"			
			CMLParser.addEventListener(CMLParser.COMPLETE, cmlInit);			
		}
	
		override protected function gestureworksInit():void
 		{
			trace("gestureWorksInit()");
		}
		
	}
}