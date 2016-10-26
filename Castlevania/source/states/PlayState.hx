package source.states;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.math.FlxMath;
import sprites.Player;
import sprites.Enemy1;
import sprites.Enemy2;
import sprites.EnemyBase;
class PlayState extends FlxState
{
	private var player:Player;
	private var enemy:Enemy1;
	private var enemy2:Enemy2;
	private var platform:FlxSprite;
	override public function create():Void
	{
		super.create();
		platform = new FlxSprite(0, 200);
		platform.makeGraphic(FlxG.width, 16, 0xff00fff);
		platform.immovable = true;
		player = new Player(200, 100);
		enemy = new Enemy1(150, 100);
		enemy2 = new Enemy2(100, 100);
		add(player);
		add(enemy);
		add(enemy2);
		add(platform);
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		FlxG.collide(platform, player);
		FlxG.collide(platform, enemy);
		FlxG.collide(platform, enemy2);
	}
}
