package dao;

import java.util.List;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;
import model.Favorite;
import model.Video;
import util.JpaUtil;

public class FavoriteDAO {
    private EntityManager em;

    public FavoriteDAO() {
    	em = JpaUtil.getEntityManager();
    }

    public void addFavorite(Favorite favorite) {
        EntityTransaction transaction = em.getTransaction();
        transaction.begin();
        em.persist(favorite);
        transaction.commit();
    }

    public Favorite getFavoriteById(int favoriteId) {
        return em.find(Favorite.class, favoriteId);
    }

    public List<Favorite> getAllFavorites() {
        return em.createQuery("SELECT f FROM Favorite f", Favorite.class).getResultList();
    }
    
	public List<Video> findAllByUsername(String username) {
		em.clear();
		try {
			String sql = "SELECT f.video FROM Favorite f WHERE f.user.username = :username";
			TypedQuery<Video> query = em.createQuery(sql, Video.class);
			query.setParameter("username", username);
			List<Video> list = query.getResultList();
			return list;
		} catch (Exception e) {
			return null;
		}
	}

    public void updateFavorite(Favorite favorite) {
        EntityTransaction transaction =  em.getTransaction();
        transaction.begin();
        em.merge(favorite);
        transaction.commit();
    }

    public void deleteFavorite(int favoriteId) {
        Favorite favorite = em.find(Favorite.class, favoriteId);
        if (favorite != null) {
            EntityTransaction transaction = em.getTransaction();
            transaction.begin();
            em.remove(favorite);
            transaction.commit();
        }
    }
    
    public void delete(int favoriteId) {
        Favorite favorite = em.find(Favorite.class, favoriteId);
        if (favorite != null) {
            EntityTransaction transaction = em.getTransaction();
            transaction.begin();
            em.remove(favorite);
            transaction.commit();
        }
    }
}
