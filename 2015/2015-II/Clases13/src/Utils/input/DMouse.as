package Utils.input 
{
	import starling.display.Stage;
	import starling.events.Touch;
	import starling.events.TouchEvent;
	import starling.events.TouchPhase;
	/**
	 * ...
	 * @author ISIL
	 */
	public class DMouse 
	{
		private static var stage:Stage;
		public static var isDown:Boolean;
		public static var x:Number;
		public static var y:Number;
		public static var onClickCallback:Function;
		public static function init(_stage:Stage):void{
			stage = _stage;
			x = 0;
			y = 0;
			stage.addEventListener(TouchEvent.TOUCH, onTouch);
		}
		
		static private function onTouch(e:TouchEvent):void 
		{
			var touch:Touch = e.getTouch(stage);
			if(touch!=null){
				if(touch.phase == TouchPhase.BEGAN){
					isDown = true;
					if(onClickCallback!=null){
						onClickCallback();
					}
				}
				if(touch.phase == TouchPhase.HOVER)
				{
					x = touch.globalX;
					y = touch.globalY;
				}
			}
			
		}
		
	}

}