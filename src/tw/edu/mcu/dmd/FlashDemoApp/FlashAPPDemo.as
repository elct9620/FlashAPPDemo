package tw.edu.mcu.dmd.FlashDemoApp
{	
	import citrus.core.starling.StarlingCitrusEngine;
	import citrus.core.starling.ViewportMode;
	
	import tw.edu.mcu.dmd.FlashDemoApp.state.MyFirstState;
	
	public class FlashAPPDemo extends StarlingCitrusEngine
	{
		public static const DEBUG:Boolean = true;
		
		public function FlashAPPDemo()
		{
			super();
			
			this.setUpStarling(DEBUG);
			
			this._baseWidth = 480;
			this._baseHeight = 800;
			this._viewportMode = ViewportMode.LETTERBOX;
		}
		
		override public function handleStarlingReady():void
		{
			new MyTheme();
			
			this.state = new MyFirstState();
		}
	}
}