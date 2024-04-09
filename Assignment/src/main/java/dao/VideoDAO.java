package dao;

import java.util.List;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import model.Video;
import util.JpaUtil;

public class VideoDAO {
    private EntityManager entityManager;

    public VideoDAO() {
        entityManager = JpaUtil.getEntityManager();
    }

    public void addVideo(Video video) {
        EntityTransaction transaction = entityManager.getTransaction();
        transaction.begin();
        entityManager.persist(video);
        transaction.commit();
    }

    public Video getVideoById(int videoId) {
        return entityManager.find(Video.class, videoId);
    }

    public List<Video> getAllVideos() {
        return entityManager.createQuery("SELECT v FROM Video v", Video.class).getResultList();
    }
    
    public List<Video> getTop5VideosByViewCount() {
        return entityManager.createQuery("SELECT v FROM Video v ORDER BY v.views DESC", Video.class)
                            .setMaxResults(5)
                            .getResultList();
    }

    public void updateVideo(Video video) {
        EntityTransaction transaction = entityManager.getTransaction();
        transaction.begin();
        entityManager.merge(video);
        transaction.commit();
    }

    public void deleteVideo(int videoId) {
        Video video = entityManager.find(Video.class, videoId);
        if (video != null) {
            EntityTransaction transaction = entityManager.getTransaction();
            transaction.begin();
            entityManager.remove(video);
            transaction.commit();
        }
    }
}
