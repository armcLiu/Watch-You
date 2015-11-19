
// Objective:Imageslider in an Applet
// Satish Chandra Panigrahi

import java.awt.*;
import java.io.*;
import java.applet.*;

public class SlideShow extends Applet implements Runnable {
	String imgpath;
	Thread t;
	Image img;
	int j = 0;
	// Change to set path in your computer
	File folder = new File("C:\\Users\\SatishChandra\\Documents\\SMU\\5510\\JavaProjectSubmission\\WatchPP");
	File[] listoffile = folder.listFiles();

	public void init() {
		this.setSize(1200, 600);
		setBackground(Color.red);
	}

	public void start() {
		t = new Thread(this);
		t.start();
	}

	public void run() {
		int i = 0;
		while (true) {
			i = (i + 1) % (listoffile.length - 1);
			if (listoffile[i].isFile()) {
				String name = listoffile[i].getName();
				// int l = name.length();
				System.out.println("File " + listoffile[i].getName());

				img = getImage(getDocumentBase(), listoffile[i].getName());
				repaint();
				System.out.println("jpg file is " + name);
				// }
				try {
					t.sleep(2000);

				} catch (InterruptedException e) {
					System.out.println("error");
				}
			} else
				System.out.println("no " + listoffile[i].getName());
		}

	}

	public void paint(Graphics g) {

		// g.drawImage(img, 0, 0, this);
		g.drawImage(img, 0, 0, getWidth(), getHeight(), this);
	}
}
