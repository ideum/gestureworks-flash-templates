package {
	
	import com.gestureworks.cml.core.CMLParser;
	import com.gestureworks.core.GestureWorks;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author Ideum
	 */
	
	[SWF(width = "1920", height = "1080", backgroundColor = "0xCCCCCC", frameRate = "60")]
	
	public class Main extends GestureWorks {
		
		public function Main():void {
			super();
			
			CMLParser.addEventListener(CMLParser.COMPLETE, cmlInit);
			
			fullscreen = true;
			gml = "library/gml/gestures.gml";
			cml = "library/cml/main.cml";
			
			// load custom cml package and classes
			//CMLCore.packages = CMLCore.packages.concat(["package1", "package2"]);
			//CMLCore.classes = CMLCore.classes.concat([Class1, Class2, Class3]);	
		}
		
		/**
		 * CML parsing complete event handler
		 * @param	e
		 */
		private function cmlInit(e:Event):void {			
			CMLParser.removeEventListener(CMLParser.COMPLETE, cmlInit);
			
			//add stats display for performance evalutation
			if (CONFIG::debug == true) {
				addChild(new Stats());
			}
			
			//post CML parse calls
		}
		
		/**
		 * GML parsing complete call
		 */
		override protected function gestureworksInit():void {
			super.gestureworksInit();
		}
	}
	
}