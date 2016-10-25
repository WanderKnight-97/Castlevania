package;

import flixel.FlxGame;
import openfl.Lib;
import openfl.display.Sprite;
import source.states.PlayState;

class Main extends Sprite
{
	public function new()
	{
		super();
		addChild(new FlxGame(0, 0, PlayState));
	}
}
