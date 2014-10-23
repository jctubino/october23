
/*
 * MonsterEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class MonsterEntity : SEEntity
{
	SESprite monster;
	SESprite gameover;
	int w;
	int h;
	int mx;
	int my;
	int p_x;
	int py;
	SESprite text;
	
	public void initialize(SEResourceCache rsc)
	{
		base.initialize(rsc);
		w = get_scene_width();
		h = get_scene_height();
		rsc.prepare_image("fin2","fin2",0.1*w);
		monster = add_sprite_for_image(SEImage.for_resource("fin2"));
		monster.move(Math.random(0,w), Math.random(0,h));

	}

	public void tick(TimeVal now, double delta)
	{
		p_x = MainScene.x;
		py = MainScene.y;
		mx = monster.get_x();
		my = monster.get_y();
		base.tick(now,delta);
		monster.move(mx+(p_x-mx)/20,my+(py-my)/20);

		 if((mx/p_x)==1 && (my/py)==1){
            text.set_text("GAME OVER!");
            text.move(0.35*w, 0.45*h);
			}

	}

	public void cleanup()
	{
		base.cleanup();
	}
	
}
