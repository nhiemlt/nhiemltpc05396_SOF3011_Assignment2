package dao;

import java.util.List;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import model.Share;
import util.JpaUtil;

public class ShareDAO {
    private EntityManager entityManager;

    public ShareDAO() {
        entityManager = JpaUtil.getEntityManager();
    }

    public void addShare(Share share) {
        EntityTransaction transaction = entityManager.getTransaction();
        transaction.begin();
        entityManager.persist(share);
        transaction.commit();
    }

    public Share getShareById(int shareId) {
        return entityManager.find(Share.class, shareId);
    }

    public List<Share> getAllShares() {
        return entityManager.createQuery("SELECT s FROM Share s", Share.class).getResultList();
    }

    public void updateShare(Share share) {
        EntityTransaction transaction = entityManager.getTransaction();
        transaction.begin();
        entityManager.merge(share);
        transaction.commit();
    }

    public void deleteShare(int shareId) {
        Share share = entityManager.find(Share.class, shareId);
        if (share != null) {
            EntityTransaction transaction = entityManager.getTransaction();
            transaction.begin();
            entityManager.remove(share);
            transaction.commit();
        }
    }
}
