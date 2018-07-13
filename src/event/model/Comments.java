package event.model;

import java.sql.Date;

public class Comments {
	protected int commentid;
	protected Date created;
	protected String content;
	protected String username;
	protected int eventID;
	
	public Comments(int commentid, Date created, String content, String username, int eventID) {
		super();
		this.commentid = commentid;
		this.created = created;
		this.content = content;
		this.username = username;
		this.eventID = eventID;
	}

	public int getCommentid() {
		return commentid;
	}

	public void setCommentid(int commentid) {
		this.commentid = commentid;
	}

	public Date getCreated() {
		return created;
	}

	public void setCreated(Date created) {
		this.created = created;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public int getEventID() {
		return eventID;
	}

	public void setEventID(int eventID) {
		this.eventID = eventID;
	}
	
	
}
