CREATE NONCLUSTERED INDEX IX_bookings_guestId
ON mao.bookings (guestId)
INCLUDE (checkinDate, checkoutDate, totalAmount);
