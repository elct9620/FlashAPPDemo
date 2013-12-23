package tw.edu.mcu.dmd.FlashDemoApp
{
	import feathers.controls.Button;
	import feathers.display.Scale3Image;
	import feathers.textures.Scale3Textures;
	import feathers.themes.MetalWorksMobileTheme;
	
	import starling.display.DisplayObjectContainer;
	import starling.textures.Texture;
	
	public class MyTheme extends MetalWorksMobileTheme
	{
		[Embed(source="/assets/Button.png")]
		public static const BUTTON_TEXTURE:Class;
		
		public function MyTheme(container:DisplayObjectContainer=null, scaleToDPI:Boolean=true)
		{
			super(container, scaleToDPI);
		}
		
		override protected function initialize():void
		{
			super.initialize();

			this.setInitializerForClass(Button, myButtonStyle, "my-style");
		}
		
		protected function myButtonStyle(button:Button):void
		{
			var texture:Texture = Texture.fromEmbeddedAsset(BUTTON_TEXTURE);
			var scaleTexture:Scale3Textures = new Scale3Textures(texture, 32, 40);
			var background:Scale3Image = new Scale3Image(scaleTexture);
			
			button.defaultSkin = background;
			button.padding = 25;
			button.defaultLabelProperties.textFormat = this.smallLightTextFormat;
		}
	}
}