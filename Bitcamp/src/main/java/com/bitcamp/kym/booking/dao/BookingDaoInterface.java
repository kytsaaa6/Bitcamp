package com.bitcamp.kym.booking.dao;

import java.util.List;

import com.bitcamp.kym.booking.domain.AvailableBooking;
import com.bitcamp.kym.booking.domain.BookingInfo;

public interface BookingDaoInterface {

	public BookingInfo selectBookingByIdx(int idx);

	public int insertBooking(BookingInfo booking);

	public int updateBooking(BookingInfo booking);

	public int deleteBooking(int idx);

//public int selectTotalCount(SearchParam searchParam);

	public List<BookingInfo> bookingList();

	public int availableBooking(AvailableBooking chk);
}
