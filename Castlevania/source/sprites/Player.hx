package sprites;

import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;
import flixel.FlxG;
import flixel.FlxObject;

/**
 * ...
 * @author ...
 */
class Player extends FlxSprite
{
	private var timerCount: Float = 0;
	private var maxTimerCounter: Float = 2;

	public function new(?X:Float=0, ?Y:Float=0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(X, Y, SimpleGraphic);
		makeGraphic(16, 32);
		
		acceleration.y = Reg.accelY;
	}
	override public function update(elapsed:Float):Void
	{
		velocity.x = 0;
		Reg.posX = x + width / 2;
		Reg.posY = y + height / 2;
		Reg.widthP = width;
		Reg.heightP = height;
		
		if (FlxG.keys.pressed.RIGHT)
			velocity.x += Reg.speed;
		if (FlxG.keys.pressed.LEFT)
			velocity.x -= Reg.speed;
		if (FlxG.keys.justPressed.SPACE && isTouching(FlxObject.FLOOR))
			velocity.y = Reg.jump;
		super.update(elapsed);
	}
}