package sprites;

import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;

/**
 * ...
 * @author ...
 */
class Hit extends FlxSprite
{
	private var d:Int = 0;

	public function new(?X:Float=0, ?Y:Float=0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(X, Y, SimpleGraphic);
		makeGraphic(8, 2, 0xffff0000);
	}
	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		if (d == 5)
		{
		 destroy();
		 Reg.m = true;
		 d = 0;
		}
		d++;
	}
	
}