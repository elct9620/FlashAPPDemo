package tw.edu.mcu.dmd.FlashDemoApp.state
{
	import flash.filesystem.File;
	
	import citrus.core.starling.StarlingState;
	
	import starling.display.Image;
	import starling.utils.AssetManager;
	
	public class MyFirstState extends StarlingState
	{
		
		private var asset:AssetManager;
		
		public function MyFirstState()
		{
			super();
			
			asset = new AssetManager();
		}
		
		override public function initialize():void
		{
			super.initialize();
			this.stage.color = 0x000000;
			
			asset.enqueue(File.applicationDirectory.resolvePath("assets/Logo.png"));
			asset.loadQueue(handleAssetLoading);
		}
		
		private function handleAssetLoading(ratio:Number):void
		{
			if(ratio != 1) return;
			
			var logo:Image = new Image(asset.getTexture("Logo"));
			logo.scaleX = logo.scaleY = 0.5;
			logo.x = stage.stageWidth / 2 - logo.width / 2;
			logo.y = stage.stageHeight / 2 - logo.height / 2;
			
			this.addChild(logo);
		}
	}
}