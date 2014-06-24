package {
	
	import com.gestureworks.core.GestureWorks;
	
	/**
	 * ...
	 * @author Ideum
	 */
	
	[SWF(width = "1920", height = "1080", backgroundColor = "0xCCCCCC", frameRate = "60")]
	
	public class Test1 extends GestureWorks {
		
		public function Test1():void {
			super();			
			
			fullscreen = true;
			gml = "library/gml/gestures.gml";
		}
		
		/**
		 * GML parsing complete call
		 */
		override protected function gestureworksInit():void {
			super.gestureworksInit();
		}
	}
	
}