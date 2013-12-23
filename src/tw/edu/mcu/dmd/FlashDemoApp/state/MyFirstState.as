package tw.edu.mcu.dmd.FlashDemoApp.state
{
	import citrus.core.starling.StarlingState;
	
	public class MyFirstState extends StarlingState
	{
		public function MyFirstState()
		{
			super();
		}
		
		override public function initialize():void
		{
			super.initialize();
			this.stage.color = 0x000000;
		}
	}
}