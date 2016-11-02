package sprites;

import flixel.system.FlxAssets.FlxGraphicAsset;

/**
 * ...
 * @author ...
 */
class Enemy1 extends EnemyBase
{
	private var et:Int = 1;
	private var movi:Int = 0;
	public function new(?X:Float=0, ?Y:Float=0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(X, Y, SimpleGraphic);
		makeGraphic(32, 32);
		acceleration.y = Reg.accelY;
		
	}
	override public function move()
	{
		velocity.x = 0;
		
		if (et == 1)
		{
			x++;
			movi++;
		}
		else if (et == 2)
		{
			x--;
			movi++;
		}
		else if (et == 3)
			et = 1;
		if (movi == 50)
		{
			et++;
			movi = 0;
		}
		super.move();
	} 
}