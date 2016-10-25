package sprites;

import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;
import flixel.FlxG;

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
	}
	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		if (FlxG.keys.pressed.RIGHT)
			this.x += 100 * FlxG.elapsed;
		if (FlxG.keys.pressed.LEFT)
			this.x -= 100 * FlxG.elapsed;
		super.update(elapsed);
	}
}