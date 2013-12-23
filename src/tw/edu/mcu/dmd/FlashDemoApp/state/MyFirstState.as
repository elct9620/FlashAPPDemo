package tw.edu.mcu.dmd.FlashDemoApp.state
{
	import flash.filesystem.File;
	
	import citrus.core.starling.StarlingState;
	import citrus.objects.platformer.box2d.Hero;
	import citrus.objects.platformer.box2d.Platform;
	import citrus.physics.box2d.Box2D;
	
	import starling.display.Image;
	import starling.utils.AssetManager;
	
	import tw.edu.mcu.dmd.FlashDemoApp.FlashAPPDemo;
	
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
			
			var box2d:Box2D = new Box2D("box2d", {visible: FlashAPPDemo.DEBUG});
			this.add(box2d);
		}
		
		private function handleAssetLoading(ratio:Number):void
		{
			if(ratio != 1) return;
			
			var logo:Image = new Image(asset.getTexture("Logo"));
			logo.scaleX = logo.scaleY = 0.5;
			
			var player:Hero = new Hero("player", {view: logo, width: logo.width, height: logo.height});
			player.x = stage.stageWidth / 2;
			this.add(player);
			
			var platform:Platform = new Platform("platform", {width: stage.stageWidth, height: 50});
			platform.x = stage.stageWidth / 2;
			platform.y = stage.stageHeight * 0.75;
			this.add(platform);
		}
	}
}