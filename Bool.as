package {
	import flash.display.*;
	import flash.events.*;
	import flash.utils.*;
	import flash.geom.*;
	import flash.media.*;
	
	public class Bool extends Sprite{
		[Embed(source='bool.swf')]
		public var Bool_anime:Class;
		
		public var pop_sound:Sound;
		public var pop_channel:SoundChannel;
		public var soundtransform:SoundTransform;
		public var pop:Sound;	
		public var center_x:Number;
		public var center_y:Number;
		public var position_now_V_x:Number;
		public var position_before_V_x:Number;
		public var position_now_V_y:Number;
		public var position_before_V_y:Number;
		public var A_x:Number;
		public var A_y:Number;
		public var V_x:Number;
		public var V_y:Number;
		public var R:Number;
		public var M:Number;
		public var size:Number;
		public var state:String;
		public var timer:Timer;
		private var bool:Sprite;
		private var bool_big:Sprite;
		public var R_big:Number;
		public var k:Number = 45;
		
		public function Bool(){		
			timer = new Timer(15, 0);
			timer.addEventListener(TimerEvent.TIMER,onTick);
		}
		public function BoolObj(center_x:Number,center_y:Number):Sprite{
			bool = new Bool_anime();
			bool.x = center_x;
			bool.y = center_y;
			size = Math.random() * 310;
			if(size <= 125){
				size = 125;
			}
			bool.width= size;
			bool.height = size;
			
			R = size / 2;
			A_x = 0;
			A_y = 0;
			V_x = 0;
			V_y = 0;
			M = Math.PI * R * R * 100;
			
			bool.addEventListener(MouseEvent.MOUSE_DOWN,mouseDownHandler);
			bool.addEventListener(MouseEvent.MOUSE_UP,mouseUpHandler);
			bool.addEventListener(MouseEvent.MOUSE_OVER,mouseOverHandler);
			bool.addEventListener(MouseEvent.MOUSE_OUT,mouseOutHandler);

			return bool;
		}
		public function BoolBigObj():Sprite{
			bool_big = new Bool_anime();
			bool_big.x = bool.x;
			bool_big.y = bool.y;
			bool_big.width = size * 1.05;
			bool_big.height = size * 1.05;
			R_big = (size * 1.05) / 2;
			return bool_big;
		}
		private function mouseDownHandler(evt:MouseEvent):void{
			state = "Drag";
			position_before_V_x = bool.x;
			position_before_V_y = bool.y;
			M = Math.PI * R * R * 1000;
			k = 130;
			V_x = 0;
			V_y = 0;
			timer.start();
		}
		private function mouseUpHandler(evt:MouseEvent):void{
			V_x = 0;
			V_y = 0;
			
			state = "Null";
			M =Math.PI * R * R * 10;
			k = 100;
			
			bool.alpha = 1;
			bool_big.alpha = 1;
			timer.stop();
		}
		private function onTick(evt:TimerEvent):void{
			
			bool.x =mouseX;
			bool.y = mouseY;
			bool_big.x = mouseX;
			bool_big.y = mouseY;
			
			position_now_V_x = bool.x;
			position_now_V_y = bool.y;
		}
		private function mouseOverHandler(evt:MouseEvent):void{
			bool.alpha = 0.4;
			bool_big.alpha = 0.4;
		}
		private function mouseOutHandler(evt:MouseEvent):void{
			bool.alpha = 1;
			bool_big.alpha = 1;
		}
	}
}