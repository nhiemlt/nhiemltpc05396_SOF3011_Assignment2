package model;

import java.io.Serializable;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

import java.sql.Timestamp;
import java.util.List;


/**
 * The persistent class for the Videos database table.
 * 
 */
@Entity
@Table(name="Videos")
@NamedQuery(name="Video.findAll", query="SELECT v FROM Video v")
public class Video implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="VideoID")
	private int videoID;

	@Column(name="Active")
	private boolean active;

	@Column(name="Description")
	private String description;

	@Column(name="Poster")
	private String poster;

	@Column(name="Title")
	private String title;

	@Column(name="Views")
	private int views;

	@Column(name="YouTubeURL")
	private String youTubeURL;

	//bi-directional many-to-one association to Favorite
	@OneToMany(mappedBy="video")
	private List<Favorite> favorites;

	//bi-directional many-to-one association to Share
	@OneToMany(mappedBy="video")
	private List<Share> shares;

	public Video() {
	}

	public int getVideoID() {
		return this.videoID;
	}

	public void setVideoID(int videoID) {
		this.videoID = videoID;
	}

	public boolean getActive() {
		return this.active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getPoster() {
		return this.poster;
	}

	public void setPoster(String poster) {
		this.poster = poster;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getViews() {
		return this.views;
	}

	public void setViews(int views) {
		this.views = views;
	}

	public String getYouTubeURL() {
		return this.youTubeURL;
	}

	public void setYouTubeURL(String youTubeURL) {
		this.youTubeURL = youTubeURL;
	}

	public List<Favorite> getFavorites() {
		return this.favorites;
	}

	public void setFavorites(List<Favorite> favorites) {
		this.favorites = favorites;
	}

	public Favorite addFavorite(Favorite favorite) {
		getFavorites().add(favorite);
		favorite.setVideo(this);

		return favorite;
	}

	public Favorite removeFavorite(Favorite favorite) {
		getFavorites().remove(favorite);
		favorite.setVideo(null);

		return favorite;
	}

	public List<Share> getShares() {
		return this.shares;
	}

	public void setShares(List<Share> shares) {
		this.shares = shares;
	}

	public Share addShare(Share share) {
		getShares().add(share);
		share.setVideo(this);

		return share;
	}

	public Share removeShare(Share share) {
		getShares().remove(share);
		share.setVideo(null);

		return share;
	}

}