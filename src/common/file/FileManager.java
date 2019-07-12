package common.file;

import java.awt.Graphics;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;

public class FileManager {
	
	public static String getExtend(String path){
		int lastIndex = path.lastIndexOf(".");
				
		return path.substring(lastIndex+1);
	}
	
	public static void makeThumb(File file, String savePath, String realname, int product_id) throws IOException{
		int xscale = 4;
		int yscale = 3;
		int size = 15;
		int width = xscale*size;
		int height = yscale*size;
		String ext = getExtend(realname);
		BufferedImage img = ImageIO.read(file);
		Image reiszeImg = img.getScaledInstance(width, height, Image.SCALE_FAST);
		BufferedImage newImg = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
		Graphics g = newImg.getGraphics();
		g.drawImage(reiszeImg, 0, 0, null);
		g.dispose();
		ImageIO.write(newImg, ext, new File(savePath+product_id+"_thumb."+ext));
	}
		
}// class
