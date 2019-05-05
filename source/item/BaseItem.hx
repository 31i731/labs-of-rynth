package item;

import actors.Actor;
import flixel.FlxSprite;
import buffs.Buff;

class BaseItem extends FlxSprite {
	public var isActive:Bool;
	public var isWeapon:Bool;
	public var name:String;
	public var owner:Actor;
	public var buffsToPass:List<Buff> = new List<Buff>();

	public function new(X:Float = 0, Y:Float = 0) {
		super(X + 4, Y + 4);
	}

	override public function update(elapsed:Float):Void {
		super.update(elapsed);
	}

	public function onUse(actor:Actor):Bool {
		return true;
	}

	public function isPickable():Bool {
		return alive;
	}
}
