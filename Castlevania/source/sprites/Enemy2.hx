package sprites;

import flixel.system.FlxAssets.FlxGraphicAsset;

/**
 * ...
 * @author ...
 */
class Enemy2 extends EnemyBase
{
	
	public function new(?X:Float=0, ?Y:Float=0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(X, Y, SimpleGraphic);
		makeGraphic(32, 32);
		acceleration.y = Reg.accelY;
	}
	override public function move()
	{
		super.move(); //not work. replantear logica.
		if (y + height / 2 > Reg.posY && y < Reg.posY + Reg.heightP)
			velocity.x += 200;
		/*else if (y + height / 2 > Reg.posY && y < Reg.posY + Reg.heightP)
			velocity.x -= 200;*/
		else if (y > Reg.posY)
			y--;
		else if (y < Reg.posY)
			y++;
	}
}