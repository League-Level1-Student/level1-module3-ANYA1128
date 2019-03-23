import java.awt.Color;

import info.gridworld.actor.Bug;
import info.gridworld.actor.Flower;
import info.gridworld.grid.Location;
import info.gridworld.world.World;

public class Gridworld {
	public static void main(String[] args) {
		World world = new World();

		world.show();
		for (int i = 0; i < 10; i++) {
			for (int a = 0; a < 10; a++) {
				Location wow = new Location(i, a);
				Flower me = new Flower();
				world.add(wow, me);
				if (i % 2 == 0) {
					me.setColor(Color.red);
				} else if (i % 2 != 0) {
					me.setColor(Color.white);
				}
			}
		}
		for (int b = 0; b < 10; b++) {
			for (int c = 0; c < 10; c++) {
				Location wowo = new Location(b, c);
				Bug mem = new Bug();

				if (b == c) {
					world.add(wowo, mem);
				}
			}
		}
		for (int d = 0; d < 10; d++) {
			for (int e = 10; e >= 0; e--) {
				Location wowow = new Location(d, e);
				Bug meme = new Bug();
				if (d + e == 9) {
					world.add(wowow, meme);
				}

			}
		}

	}
}
