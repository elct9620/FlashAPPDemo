package tw.edu.mcu.dmd.FlashDemoApp.state
{
	import citrus.core.starling.StarlingState;
	
	import feathers.controls.Button;
	
	import starling.events.Event;
	
	public class ButtonState extends StarlingState
	{
		public function ButtonState()
		{
			super();
		}
		
		override public function initialize():void
		{
			super.initialize();
			
			var button:Button = new Button();
			button.nameList.add("my-style");
			button.label = "Go to First State";
			this.addChild(button);
			button.validate();
			button.x = stage.stageWidth / 2 - button.width / 2;
			button.y = stage.stageHeight / 2 - button.height / 2;
			
			button.addEventListener(Event.TRIGGERED, onClick);
		}
		
		protected function onClick(e:Event):void
		{
			this._ce.state = new MyFirstState();
		}
	}
}