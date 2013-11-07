package {
	
	import com.gestureworks.core.GestureWorks;
	import com.gestureworks.cml.core.CMLParser;
	
	[SWF(width = "1280", height = "720", backgroundColor = "0x000000", frameRate = "60")]
	
	public class Main extends GestureWorks {		
		
		public function Main() { 		
			super();
			fullscreen = true;
			gml = "library/gml/gestures.gml"			
		}
	
		override protected function gestureworksInit():void {
			trace("gestureWorksInit()");
		}
		
	}
}