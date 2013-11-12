package {
	
	import com.gestureworks.core.GestureWorks;
	
	[SWF(width = "1920", height = "1080", backgroundColor = "0x000000", frameRate = "60")]
	
	public class Main extends GestureWorks {		
		
		public function Main() { 		
			super();
			gml = "gestures.gml";		
		}
	
		override protected function gestureworksInit():void {
			trace("gestureWorksInit()");
		}
		
	}
}