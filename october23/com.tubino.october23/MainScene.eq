
/*
 * MainScene.eq
 * Generated by Eqela Studio 2.0b7.4
 */

public class MainScene : SEScene
{
	SESprite bg;
	int w;
	int h;
	public static int x;
	public static int y;
	int i;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		w = get_scene_width();
		h = get_scene_height();
		x=0;
		y=0;
		add_entity(SESpriteEntity.for_color(Color.instance("white"),w,h));
		rsc.prepare_image("galaxy","galaxy", w, h);
		bg = add_sprite_for_image(SEImage.for_resource("galaxy"));
		bg.move(0,0);
		for(i=0;i<Math.random(1,3);i++)
		{
			add_entity(new MonsterEntity());
		}
		add_entity(new PlayerEntity());
		AudioClipManager.prepare("");
		AudioClipManager.play("");
	}

	public void on_pointer_move(SEPointerInfo pi)
	{
		base.on_pointer_move(pi);
		x = pi.get_x();
		y = pi.get_y();
	}


	public void cleanup() {
		base.cleanup();
	}
}
