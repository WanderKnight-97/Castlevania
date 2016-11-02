package sprites;

import flixel.FlxSprite;
import flixel.FlxG;
import flixel.FlxObject;
import flixel.system.FlxAssets.FlxGraphicAsset;

class EnemyBase extends FlxSprite
{

	public function new(?X:Float=0, ?Y:Float=0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(X, Y, SimpleGraphic);
		//acceleration.y = Reg.accelY;
		
	}
	override public function update(elapsed:Float):Void
	{
		//velocity.x = 0;
		move();
		super.update(elapsed);
	}
	public function move(){}
	
}