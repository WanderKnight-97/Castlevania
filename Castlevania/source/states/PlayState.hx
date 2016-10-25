package source.states;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.math.FlxMath;
import sprites.Player;
class PlayState extends FlxState
{
	private var player:Player;
	override public function create():Void
	{
		super.create();
		player = new Player(200,200);
		add(player);
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		if (FlxG.keys.justPressed.SPACE)
	}
}
