package event.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import event.dal.MusicDao;
import event.model.DIYers;
import event.model.Music;

@WebServlet("/findmusic")
public class FindMusic extends HttpServlet{

	protected MusicDao musicDao;
	
	@Override
	public void init() throws ServletException {
		musicDao = MusicDao.getInstance();
	}
	
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		Map<String, String> messages = new HashMap<String, String>();
		req.setAttribute("messages", messages);
		
		List<Music> music = new ArrayList<>();
		
		String musicName = req.getParameter("musicName");
		if (musicName == null || musicName.trim().isEmpty()) {
			messages.put("success", "Please enter a music.");
		} else {
			messages.put("success", "Music with name of " + musicName);
		}
		try {
			music = musicDao.getMusicByName(musicName);
		} catch (SQLException e) {
	    		e.printStackTrace();
	    		throw new IOException(e);
        }
	
		req.setAttribute("music", music);
		req.getRequestDispatcher("/FindMusic.jsp").forward(req, resp);
	}
	
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException{
		Map<String, String> messages = new HashMap<String, String>();
        req.setAttribute("messages", messages);
        
        List<Music> music = new ArrayList<>();
        
        String musicName = req.getParameter ("musicName");
        if (musicName == null || musicName.trim().isEmpty()) {
        	messages.put("success", "Please enter a valid name.");
        } else {
        	try {
        		music = musicDao.getMusicByName(musicName);
        	} catch (SQLException e) {
    			e.printStackTrace();
    			throw new IOException(e);
            }
        	messages.put("success", "Displaying results for " + musicName);
        }
        req.setAttribute("music", music);
        req.getRequestDispatcher("/FindMusic.jsp").forward(req, resp);
	}
}
