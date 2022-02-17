package edu.wccnet.emeyer.springMVC.dao;

import java.util.List;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import edu.wccnet.emeyer.springMVC.entity.Customer;
import edu.wccnet.emeyer.springMVC.entity.Movie;

@Repository
public class MovieDAOImpl implements MovieDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Movie> getMovies() {
		Session session = sessionFactory.getCurrentSession();
		Query<Movie> query = session.createQuery("from Movie order by title", 
				Movie.class);
		return query.getResultList();
	}
	

	@Override
	public Movie rentMovie(int movieId) {
		Session session = sessionFactory.getCurrentSession();
		Query<Movie> query = session.createQuery("from Movie where id = :id", 
				Movie.class);
		query.setParameter("id", movieId);
		return query.getSingleResult();
	}
	

	@Override
	public void saveMovie(Movie newMovie) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		//session.save(theStudent);
		session.saveOrUpdate(newMovie);
	}

	@Override
	public Movie getMovie(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		return session.get(Movie.class, id);
	
	}
	
	public Movie getMovie(String title) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Query<Movie> query = session.createQuery("from Movie where movie_title like :movie_title", 
				Movie.class);
		query.setParameter("movie_title", "%"+title+"%");
		return query.getSingleResult();
	
	}

	@Override
	public void deleteMovie(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("delete from Movie where id = :id");
		query.setParameter("id", id);
		query.executeUpdate();
	}

	@Override
	public List<Movie> searchMovieTitle(String searchString) {
		Session session = sessionFactory.getCurrentSession();
		Query<Movie> query = session.createQuery("from Movie where movie_title like :seachSting", 
				Movie.class);
		System.out.println("searchString: " + searchString);
		query.setParameter("seachSting", "%"+searchString+"%");
		return query.getResultList();
	
	}
	@Override
	public List<Movie> searchMovieDesc(String searchString) {
		Session session = sessionFactory.getCurrentSession();
		Query<Movie> query = session.createQuery("from Movie where movie_description like :seachSting", 
				Movie.class);
		System.out.println("searchString: " + searchString);
		query.setParameter("seachSting", "%"+searchString+"%");
		return query.getResultList();
	
	}
	

}

