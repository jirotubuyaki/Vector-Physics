package {
	import flash.display.*;
	import flash.events.*;
	import flash.utils.*;
	import flash.geom.*;
	import flash.media.*;

	public class Main extends Sprite {
		[Embed(source='background.swf')]
		public var back:Class;
		
		public var background:Sprite;
		public var e_l:Number = 0.6;
		public var g:Number = 0.7;
		public var makebool:Bool;
		public var hit_number:int;
		public var obj_bool:Array = new Array();
		public var obj_bool_sprite:Array = new Array();
		public var obj_bool_big_sprite:Array = new Array();
		public var hit_obj:Array = new Array();
		public var i:int;
		public var j:int;
		public var o:int;
		public var p:int;
		public var s:int;
		public var w_x:Number;
		public var w_y:Number;
		public var w_x_2:Number;
		public var w_y_2:Number;
		public var v_x:Number;
		public var v_y:Number;
		public var nai_seki:Number;
		public var v_unit:Number;
		public var v:Number;
		public var flag:String;
		public var k_distance:Number;
		public var k_x:Number;
		public var k_y:Number;
		public var V_x_k:Array = new Array();
		public var V_y_k:Array = new Array();
		public var V_x_k_before:Array = new Array();
		public var V_y_k_before:Array = new Array();
		public var r:Number;
		public var bool_big:Sprite;
		public var timer:Timer;
		public var timer2:Timer;
		public var count:int;

		public function Main(){
			timer = new Timer(1300, 0);
			timer.addEventListener(TimerEvent.TIMER,onTick);

			timer2 = new Timer(26, 0);
			timer2.addEventListener(TimerEvent.TIMER,onTick2);
			
			background = new back();	
			background.width = 100;
			background.height = 100;
			
			background.addEventListener(Event.ENTER_FRAME,act);
			stage.align=StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.frameRate = 300;
			addChild(background);
			
			makebool = new Bool();
			var bool:Sprite = makebool.BoolObj(200,-300);
			bool_big = makebool.BoolBigObj();
			obj_bool_big_sprite.push(bool_big);
			addChild(bool_big);
			obj_bool.push(makebool);
			obj_bool_sprite.push(bool);
			addChild(bool);
			
			makebool = new Bool();
			var bool2:Sprite = makebool.BoolObj(400,-2000);
			bool_big = makebool.BoolBigObj();
			obj_bool_big_sprite.push(bool_big);
			addChild(bool_big);
			obj_bool.push(makebool);
			obj_bool_sprite.push(bool2);
			addChild(bool2);
			
			makebool = new Bool();
			var bool3:Sprite = makebool.BoolObj(400,-2500);
			bool_big = makebool.BoolBigObj();
			obj_bool_big_sprite.push(bool_big);
			addChild(bool_big);
			obj_bool.push(makebool);
			obj_bool_sprite.push(bool3);
			addChild(bool3);
			
			makebool = new Bool();
			var bool4:Sprite = makebool.BoolObj(400,-3000);
			bool_big = makebool.BoolBigObj();
			obj_bool_big_sprite.push(bool_big);
			addChild(bool_big);
			obj_bool.push(makebool);
			obj_bool_sprite.push(bool4);
			addChild(bool4);
			
			makebool = new Bool();
			var bool5:Sprite = makebool.BoolObj(550,-3500);
			bool_big = makebool.BoolBigObj();
			obj_bool_big_sprite.push(bool_big);
			addChild(bool_big);
			obj_bool.push(makebool);
			obj_bool_sprite.push(bool5);
			addChild(bool5);

			makebool = new Bool();
			var bool6:Sprite = makebool.BoolObj(100,-4000);
			bool_big = makebool.BoolBigObj();
			obj_bool_big_sprite.push(bool_big);
			addChild(bool_big);
			obj_bool.push(makebool);
			obj_bool_sprite.push(bool6);
			addChild(bool6);

			makebool = new Bool();
			var bool7:Sprite = makebool.BoolObj(400,-5000);
			bool_big = makebool.BoolBigObj();
			obj_bool_big_sprite.push(bool_big);
			addChild(bool_big);
			obj_bool.push(makebool);
			obj_bool_sprite.push(bool7);
			addChild(bool7);
 
			makebool = new Bool();
			var bool8:Sprite = makebool.BoolObj(300,-5500);
			bool_big = makebool.BoolBigObj();
			obj_bool_big_sprite.push(bool_big);
			addChild(bool_big);
			obj_bool.push(makebool);
			obj_bool_sprite.push(bool8);
			addChild(bool8);

			makebool = new Bool();
			var bool9:Sprite = makebool.BoolObj(100,-6000);
			bool_big = makebool.BoolBigObj();
			obj_bool_big_sprite.push(bool_big);
			addChild(bool_big);
			obj_bool.push(makebool);
			obj_bool_sprite.push(bool9);
			addChild(bool9);

			makebool = new Bool();
			var bool10:Sprite = makebool.BoolObj(600,-6500);
			bool_big = makebool.BoolBigObj();
			obj_bool_big_sprite.push(bool_big);
			addChild(bool_big);
			obj_bool.push(makebool);
			obj_bool_sprite.push(bool10);
			addChild(bool10);

			makebool = new Bool();
			var bool11:Sprite = makebool.BoolObj(550,-7000);
			bool_big = makebool.BoolBigObj();
			obj_bool_big_sprite.push(bool_big);
			addChild(bool_big);
			obj_bool.push(makebool);
			obj_bool_sprite.push(bool11);
			addChild(bool11);

			makebool = new Bool();
			var bool12:Sprite = makebool.BoolObj(100,-7500);
			bool_big = makebool.BoolBigObj();
			obj_bool_big_sprite.push(bool_big);
			addChild(bool_big);
			obj_bool.push(makebool);
			obj_bool_sprite.push(bool12);
			addChild(bool12);

			makebool = new Bool();
			var bool13:Sprite = makebool.BoolObj(400,-8000);
			bool_big = makebool.BoolBigObj();
			obj_bool_big_sprite.push(bool_big);
			addChild(bool_big);
			obj_bool.push(makebool);
			obj_bool_sprite.push(bool13);
			addChild(bool13);
 
			makebool = new Bool();
			var bool14:Sprite = makebool.BoolObj(300,-8500);
			bool_big = makebool.BoolBigObj();
			obj_bool_big_sprite.push(bool_big);
			addChild(bool_big);
			obj_bool.push(makebool);
			obj_bool_sprite.push(bool14);
			addChild(bool14);

			makebool = new Bool();
			var bool15:Sprite = makebool.BoolObj(100,-9000);
			bool_big = makebool.BoolBigObj();
			obj_bool_big_sprite.push(bool_big);
			addChild(bool_big);
			obj_bool.push(makebool);
			obj_bool_sprite.push(bool15);
			addChild(bool15);

			makebool = new Bool();
			var bool16:Sprite = makebool.BoolObj(600,-9500);
			bool_big = makebool.BoolBigObj();
			obj_bool_big_sprite.push(bool_big);
			addChild(bool_big);
			obj_bool.push(makebool);
			obj_bool_sprite.push(bool16);
			addChild(bool16);

			makebool = new Bool();
			var bool17:Sprite = makebool.BoolObj(100,-10000);
			bool_big = makebool.BoolBigObj();
			obj_bool_big_sprite.push(bool_big);
			addChild(bool_big);
			obj_bool.push(makebool);
			obj_bool_sprite.push(bool17);
			addChild(bool17);

			makebool = new Bool();
			var bool18:Sprite = makebool.BoolObj(400,-10500);
			bool_big = makebool.BoolBigObj();
			obj_bool_big_sprite.push(bool_big);
			addChild(bool_big);
			obj_bool.push(makebool);
			obj_bool_sprite.push(bool18);
			addChild(bool18);
 
			makebool = new Bool();
			var bool19:Sprite = makebool.BoolObj(300,-11000);
			bool_big = makebool.BoolBigObj();
			obj_bool_big_sprite.push(bool_big);
			addChild(bool_big);
			obj_bool.push(makebool);
			obj_bool_sprite.push(bool19);
			addChild(bool19);

			makebool = new Bool();
			var bool20:Sprite = makebool.BoolObj(100,-11500);
			bool_big = makebool.BoolBigObj();
			obj_bool_big_sprite.push(bool_big);
			addChild(bool_big);
			obj_bool.push(makebool);
			obj_bool_sprite.push(bool20);
			addChild(bool20);

			makebool = new Bool();
			var bool21:Sprite = makebool.BoolObj(600,-12000);
			bool_big = makebool.BoolBigObj();
			obj_bool_big_sprite.push(bool_big);
			addChild(bool_big);
			obj_bool.push(makebool);
			obj_bool_sprite.push(bool21);
			addChild(bool21);
			
			timer.start();
		}
		public function act(e:Event):void{
			for(i=0;i<21;i++){
				if(obj_bool[i].state != "Drag"){
					obj_bool[i].A_y = obj_bool[i].A_y +g;
					obj_bool[i].V_y = obj_bool[i].V_y + obj_bool[i].A_y;
					
					if(Math.abs(obj_bool[i].V_y/2.5) <= 1.5){
						obj_bool[i].V_y = 0;
					}
					if(Math.abs(obj_bool[i].V_y/2.5) >= 200){
						obj_bool[i].V_y = 150;
					}
					obj_bool_sprite[i].y =obj_bool_sprite[i].y + obj_bool[i].V_y /2.5;
					obj_bool_big_sprite[i].y = obj_bool_sprite[i].y;

					
					obj_bool[i].A_x = obj_bool[i].A_x;
					obj_bool[i].V_x = obj_bool[i].V_x + obj_bool[i].A_x;
					
					if(Math.abs(obj_bool[i].V_x/2.5) <= 0.7){
						obj_bool[i].V_x = 0;
					}
					if(Math.abs(obj_bool[i].V_x/2.5) >= 200){
						obj_bool[i].V_x = 150;
					}
					obj_bool_sprite[i].x =obj_bool_sprite[i].x + obj_bool[i].V_x /2.5;
					obj_bool_big_sprite[i].x = obj_bool_sprite[i].x;
					
					obj_bool_big_sprite[i].rotation += obj_bool[i].V_x;
					obj_bool_sprite[i].rotation += obj_bool[i].V_x;
					
					if((obj_bool_big_sprite[i].y + (obj_bool[i].R_big)) >= stage.stageHeight){
						obj_bool[i].A_y = 0;
						obj_bool[i].V_y = -1 * e_l * obj_bool[i].V_y;
					
						obj_bool_big_sprite[i].y = stage.stageHeight - (obj_bool[i].R_big);
						obj_bool_sprite[i].y = obj_bool_big_sprite[i].y
					}
				
					if((obj_bool_big_sprite[i].x - (obj_bool[i].R_big)) <=0){
						obj_bool[i].A_x = 0;
						obj_bool[i].V_x = -1 * e_l * obj_bool[i].V_x;
					
						obj_bool_big_sprite[i].x = 0 + (obj_bool[i].R_big);
						obj_bool_sprite[i].x = obj_bool_big_sprite[i].x;
					}
					if((obj_bool_big_sprite[i].x + (obj_bool[i].R_big)) >=stage.stageWidth){
						obj_bool[i].A_x = 0;
						obj_bool[i].V_x = -1 * e_l * obj_bool[i].V_x;
					
						obj_bool_big_sprite[i].x = stage.stageWidth - (obj_bool[i].R_big);
						obj_bool_sprite[i].x = obj_bool_big_sprite[i].x;
					}
					obj_bool_big_sprite[i].rotation += obj_bool[i].V_x;
					obj_bool_sprite[i].rotation += obj_bool[i].V_x;
				}
			}
			for(i = 0;i<21;i++){
				flag = "off";
				hit_number = 0;
				for(j=0;j<21;j++){
					if(i != j){
						if(Math.sqrt((obj_bool_sprite[j].x -obj_bool_sprite[i].x) * (obj_bool_sprite[j].x -obj_bool_sprite[i].x) +(obj_bool_sprite[j].y -obj_bool_sprite[i].y) * (obj_bool_sprite[j].y -obj_bool_sprite[i].y)) <= obj_bool[i].R + obj_bool[j].R){
							obj_bool[i].A_y = 0.25;
							k_distance = Math.sqrt((obj_bool_sprite[j].x -obj_bool_sprite[i].x)*(obj_bool_sprite[j].x -obj_bool_sprite[i].x) + (obj_bool_sprite[j].y -obj_bool_sprite[i].y)*(obj_bool_sprite[j].y -obj_bool_sprite[i].y));
							r = (obj_bool[i].R + obj_bool[j].R);
							
							k_x = (obj_bool_sprite[j].x -obj_bool_sprite[i].x) / k_distance;
							k_y = (obj_bool_sprite[j].y -obj_bool_sprite[i].y) / k_distance;

							V_x_k[i] = (-1) * obj_bool[i].k * k_x;
							V_y_k[i] = (-1) * obj_bool[i].k * k_y;
							
							if(Math.abs(V_x_k[i]) < 20){
								V_x_k[i] =0;
							}
							if(Math.abs(V_y_k[i]) < 20){
								V_y_k[i] =0;
							}
							obj_bool[i].V_x = obj_bool[i].V_x + V_x_k[i]/8.3;
							obj_bool[i].V_y = obj_bool[i].V_y + V_y_k[i]/8.3;
							
							V_x_k[i] = 0;
							V_y_k[i] = 0;
				
							obj_bool[i].V_x = obj_bool[i].V_x;
							obj_bool[i].V_y = obj_bool[i].V_y;
							
							nai_seki = obj_bool[i].V_x * (obj_bool_sprite[j].x -obj_bool_sprite[i].x) + obj_bool[i].V_y * (obj_bool_sprite[j].y -obj_bool_sprite[i].y);
							if(nai_seki > 0){
								hit_obj.push(j);
								hit_number = hit_number + 1;
							}
						}
					}
				}
				Hit(i,hit_obj,hit_number);
				for(o=0;o<hit_number;o++){
					hit_obj.shift();
				}
			}
		}
		public function Hit(i:int,obj:Array,number:int):void{
			for(p=0;p<number;p++){
				w_x = obj_bool_sprite[obj[0]].x - obj_bool_sprite[i].x;
				w_y = obj_bool_sprite[obj[0]].y - obj_bool_sprite[i].y;
			
				v = (obj_bool[i].V_x / number) * w_x + (obj_bool[i].V_y / number) * w_y;
				v_unit = Math.sqrt(w_x * w_x + w_y * w_y);
								
				v_x = v / (v_unit * v_unit) * w_x;
				v_y = v / (v_unit * v_unit) * w_y;
					
				w_x_2 = obj_bool[i].V_x - v_x;
				w_y_2 = obj_bool[i].V_y - v_y;
				
				if(Math.abs(v_x) < 30){
					 v_x = 0;
				}
				if(Math.abs(v_y) < 30){
					v_y = 0;
				}
				obj_bool[i].V_x = (-1)* 0.2 * v_x + w_x_2;
				obj_bool[i].V_y = (-1)* 0.2 * v_y + w_y_2;
								
				obj_bool[i].V_x = obj_bool[i].V_x;
				obj_bool[i].V_y = obj_bool[i].V_y;
				
				obj_bool[obj[0]].V_x = obj_bool[obj[0]].V_x + obj_bool[i].M / obj_bool[obj[0]].M *0.2 * v_x;
				obj_bool[obj[0]].V_y = obj_bool[obj[0]].V_y + obj_bool[i].M / obj_bool[obj[0]].M *0.2 * v_y;
			
				obj.shift();
			}
		}
		private function onTick(evt:TimerEvent):void{
			if(count <= 3){
				count = 0;
				s = int(Math.random() * 20);
				timer2.start();
				timer.stop();
			}
		}
		private function onTick2(evt:TimerEvent):void{
			
			obj_bool_sprite[s].alpha -= 0.0585;
			obj_bool_big_sprite[s].alpha -= 0.05385;
			
			count = count + 20;
			
			if(count >= 850){
				obj_bool_sprite[s].x =Math.random() * stage.stageWidth;
				obj_bool_big_sprite[s].x = obj_bool_sprite[s].x;
				obj_bool_sprite[s].y =-500;
				obj_bool_big_sprite[s].y = -500;
				obj_bool_sprite[s].alpha = 1;
				obj_bool_big_sprite[s].alpha =1;
				count = 0;
				s = int(Math.random() * 20);

			}
		}
	}
}