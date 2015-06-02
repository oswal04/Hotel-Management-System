package com.hotel.myapp.Dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;

import com.hotel.myapp.model.Booking;
import com.hotel.myapp.model.Transaction;

public class BookingDao extends DAO{
	
	public Booking getBookings(int bookingID)throws Exception{
		
		try{
			Query q=getSession().createQuery("FROM Booking where bookingID = :bookingID");

			q.setInteger("bookingID", bookingID);
			
			Booking booking=(Booking) q.uniqueResult();
			return booking;
			
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("Error in BookingDAO");
		}
		
		return null;		
	}
	
	
	@SuppressWarnings("unchecked")
	public ArrayList<Booking> queryBookingByUserId(Integer user_userId,int x) {

		Query q = getSession().createQuery("from Booking where user_userId = :user_userId");
		q.setInteger("user_userId", user_userId);
		q.setFirstResult(x);
		q.setMaxResults(2);

		ArrayList<Booking> results = (ArrayList<Booking>) q.list();
		
		for(Booking b : results){
			System.out.println(" Booking "+b.getBookingID());
		}
		
		ArrayList<Booking> booking = new ArrayList<Booking>();
		
		Transaction t=new Transaction();
		for(Booking b : results){
			
			t=b.getTransaction();
			System.out.println("transaction check");
			if(t != null){
				booking.add(b);
				System.out.println("booking ki size "+booking.size());
			}
		}

		return booking;
	}


}
