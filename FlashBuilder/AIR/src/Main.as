package {
	import com.gestureworks.cml.core.CMLAir;	
	import com.gestureworks.cml.core.CMLParser;
	import com.gestureworks.core.GestureWorks;
	import flash.events.Event;
	
	// load AIR classes
	CMLAir;	
	
	[SWF(width = "1920", height = "1080", backgroundColor = "0x000000", frameRate = "60")]
	
	public class Main extends GestureWorks {		
		
		public function Main() { 		
			super();
			CMLParser.addEventListener(CMLParser.COMPLETE, cmlInit);			
			fullscreen = true;
			gml = "library/gml/gestures.gml";
			cml = "library/cml/main.cml";
		}
	
		override protected function gestureworksInit():void {
			trace("gestureWorksInit()");
		}
		
		private function cmlInit(e:Event):void {
			trace("cmlInit()");
		}
		
	}
}