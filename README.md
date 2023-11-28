# Flight Booking System

This is a simple Flight Booking System built using Spring Boot.

## Description

The Flight Booking System is designed to facilitate flight bookings for customers. It provides functionalities for users to search for flights, book tickets, and manage their bookings.

## Features

- **Search Flights:** Allows users to search for available flights based on various parameters like date, destination, and departure location.
- **Book Tickets:** Enables users to select flights and book tickets for their preferred travel schedule.
- **Manage Bookings:** Provides functionality to view and manage existing bookings, including cancellation and modification options.

## Technologies Used

- **Spring Boot:** Framework for building the application.
- **Spring MVC:** For implementing the web layer.
- **Spring Data JPA:** For data access and manipulation.
- **JSP:** Java Server Page for web page.
- **MySQL:** Database for storing flight and booking information.

## Setup Instructions

1. **Clone the repository:**
    ```bash
    git clone https://github.com/yourusername/flight-booking-system.git
    ```

2. **Database Configuration:**
    - Create a MySQL database named `flight_booking_db`.
    - Update the `application.properties` file with your database configurations.

3. **Run the Application:**
    - Navigate to the project directory.
    - Run the Spring Boot application using your IDE or by executing:
        ```bash
        ./mvnw spring-boot:run
        ```

4. **Access the Application:**
    - Open a web browser and go to `http://localhost:8080` to use the Flight Booking System.

## Usage

- Upon accessing the application, users can:
    - Search for flights by providing the necessary details.
    - Select a flight and proceed to book tickets.
    - View and manage their bookings through the user dashboard.

## Contribution

Contributions are welcome! If you find any issues or have suggestions for improvements, please feel free to open an issue or create a pull request.

## License

This project is licensed under the [MIT License](LICENSE).
