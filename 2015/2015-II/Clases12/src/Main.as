package
{
	import flash.desktop.NativeApplication;
	import flash.events.Event;
	import flash.display.Sprite;
	import Utils.start.DStarling;
	
	/**
	 * ...
	 * @author ISIL
	 */
	public class Main extends Sprite 
	{
		
		public function Main() 
		{
			if (stage) added();
			else addEventListener(Event.ADDED_TO_STAGE, added);
		}
		
		private function added(e:Event=null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, added);
			var assets:Vector.<String> = new Vector.<String>();
			assets.push("graphics/bgLayer1.jpg");
			assets.push("graphics/bgWelcome.jpg");
			assets.push("graphics/mySpritesheet.png");
			assets.push("graphics/mySpritesheet.xml");
			DStarling.init(manageView, stage, assets);
		}
		
	}
	
}