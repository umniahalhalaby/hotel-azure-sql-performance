create schema mao;

CREATE TABLE mao.guests (
    guestId INT PRIMARY KEY,
    firstName NVARCHAR(50),
    lastName NVARCHAR(50),
    gender NVARCHAR(10),
    email NVARCHAR(100),
    phone NVARCHAR(50),
    nationality NVARCHAR(50),
    birthdate DATE,
    address NVARCHAR(200),
    city NVARCHAR(100),
    postalCode NVARCHAR(20),
    country NVARCHAR(50)
);

CREATE TABLE mao.bookings (
    bookingId INT IDENTITY PRIMARY KEY,
    guestId INT NOT NULL,
    roomId INT NOT NULL,
    checkinDate DATE,
    checkoutDate DATE,
    checkinTime TIME,
    checkoutTime TIME,
    adults INT,
    children INT,
    totalNights INT,
    totalAmount DECIMAL(10,2),
    reservationSource NVARCHAR(50),
    bookingDate DATE,
    specialRequests NVARCHAR(500),
    FOREIGN KEY (guestId)
        REFERENCES mao.guests(guestId),
    FOREIGN KEY (roomId)
        REFERENCES mao.rooms(roomId)
);
