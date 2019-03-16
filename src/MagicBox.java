
/*
 *    Copyright (c) The League of Amazing Programmers 2013-2018
 *    Level 1
 */

import java.awt.Dimension;
import java.awt.Graphics;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.SwingUtilities;

public class MagicBox extends JPanel implements Runnable, MouseListener {

	/*
	 * We are going to hide secrets within the magic box. When the user clicks on a
	 * secret place, stuff will happen.
	 * 
	 * 1. Make the frame respond to mouse clicks.
	 * 
	 * 2. When the mouse is clicked, use the Media Palace (read the code in the
	 * default package) to play sounds, show images or speak.
	 * 
	 * 3. backgroundImage.getRGB(keyEvent.getX(), keyEvent.getY()) will give you the
	 * color of the current pixel.
	 */

	BufferedImage backgroundImage;
	MediaPalace mp = new MediaPalace();
	Song violin = new Song("violin.wav");
	Song euphonium = new Song("euph.wav");
	Song trumpet = new Song("trumpet.wav");
	Song hey = new Song("hey.wav");
	Song ding = new Song("ding.wav");
	Song piano;

	public static void main(String[] args) throws Exception {
		SwingUtilities.invokeLater(new MagicBox());

	}

	@Override
	public void run() {
		try {
			loadBackgroundImage();
			createUI();
			piano = new Song("piano.wav");
		} catch (Exception w) {
			System.err.println(w.getMessage());
		}
	}

	private void createUI() {
		JFrame frame = new JFrame("The Magic Box contains many secrets...");
		frame.add(this);
		setPreferredSize(new Dimension(backgroundImage.getWidth(), backgroundImage.getHeight()));
		frame.pack();
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setVisible(true);
		frame.addMouseListener(this);
	}

	private void loadBackgroundImage() throws Exception {
		String imageFile = "src/magic-box.jpg";
		try {
			backgroundImage = ImageIO.read(new File(imageFile));
		} catch (IOException e) {
			throw new Exception("Could not load image: " + imageFile);
		}
	}

	@Override
	public void paintComponent(Graphics g) {
		g.drawImage(backgroundImage, 0, 0, null);
	}

	@Override
	public void mouseClicked(MouseEvent e) {
		// TODO Auto-generated method stub

		int color = backgroundImage.getRGB(e.getX(), e.getY());
		System.out.println(color);
		if (color == -3166864) {
			mp.loadSound("violin.wav").play();
		}
		if (color == -3561874) {
			mp.loadSound("euph.wav").play();
		}
		if (color == -2047618) {
			mp.loadSound("trumpet.wav").play();
		}
		if (color == -5086691) {
			mp.loadSound("hey.wav").play();
		}
		if (color == -6125215) {
			mp.loadSound("ding.wav").play();
		}
		if (color == -69429) {
			mp.loadSound("piano.wav").play();
			System.out.println("wowoow");
		}
	}

	@Override
	public void mousePressed(MouseEvent e) {
		// TODO Auto-generated method stub

	}

	@Override
	public void mouseReleased(MouseEvent e) {
		// TODO Auto-generated method stub

	}

	@Override
	public void mouseEntered(MouseEvent e) {
		// TODO Auto-generated method stub

	}

	@Override
	public void mouseExited(MouseEvent e) {
		// TODO Auto-generated method stub

	}

}
