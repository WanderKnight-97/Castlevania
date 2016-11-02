package states;

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
import sprites.Hit;
class PlayState extends FlxState
{
	private var player:Player;
	private var enemy:Enemy1;
	private var enemy2:Enemy2;
	private var platform:FlxSprite;
	public var p:FlxSprite;
	private var hit:Hit;
	override public function create():Void
	{
		super.create();
		
		player = new Player(200, 100);
		enemy = new Enemy1(150, 100);
		enemy2 = new Enemy2(100, 100);
		
		p = new FlxSprite(0, 200);
		p.makeGraphic(FlxG.width, 16, 0xff00fff);
		p.immovable = true;
		add(player);
		add(enemy);
		//add(enemy2);
		add(p);
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		FlxG.collide(p, player);
		FlxG.collide(p, enemy);
		FlxG.collide(p, enemy2);
		if (FlxG.keys.justPressed.V)
		{
			player.velocity.x = 0;
			hit = new Hit(player.x + player.width, player.y + (player.height / 2));
			trace (add(hit));
			Reg.m = false;
		}
	}
}
