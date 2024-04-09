package dao;

import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;
import model.User;
import util.JpaUtil;

public class UserDAO {
    private EntityManager em = JpaUtil.getEntityManager();

    public void addUser(User user) {
        EntityTransaction transaction = em.getTransaction();
        transaction.begin();
        em.persist(user);
        transaction.commit();
    }

    public User getUserById(int userId) {
        return em.find(User.class, userId);
    }
    
    public User getUserByUsername(String username) {
    	List<User> list = new ArrayList<User>();
		String jpql = "Select u From User u where u.username=:un";
		TypedQuery<User> query = em.createQuery(jpql, User.class);
		query.setParameter("un", username);
		list = query.getResultList();
		return list.get(0);
    }

    public List<User> getAllUsers() {
        return em.createQuery("SELECT u FROM User u", User.class).getResultList();
    }

    public void updateUser(User user) {
        EntityTransaction transaction = em.getTransaction();
        transaction.begin();
        em.merge(user);
        transaction.commit();
    }

    public void deleteUser(int userId) {
        User user = em.find(User.class, userId);
        if (user != null) {
            EntityTransaction transaction = em.getTransaction();
            transaction.begin();
            em.remove(user);
            transaction.commit();
        }
    }
    
    public void updateTemporaryPassword(String email, String temporaryPassword) {
        User user = getUserByEmail(email);
        if (user != null) {
            user.setPassTemp(temporaryPassword);
            updateUser(user);
        }
    }

    public User getUserByEmail(String email) {
        List<User> list = new ArrayList<User>();
        String jpql = "SELECT u FROM User u WHERE u.email = :email";
        TypedQuery<User> query = em.createQuery(jpql, User.class);
        query.setParameter("email", email);
        list = query.getResultList();
        if (!list.isEmpty()) {
            return list.get(0);
        } else {
            return null;
        }
    }
}
