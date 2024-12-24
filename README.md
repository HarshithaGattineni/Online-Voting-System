# Online Voting System (OVS)

The **Online Voting System (OVS)** is a scalable, secure, and user-friendly platform designed to streamline the election process. It enables seamless interaction between voters and the election system while providing administrators with powerful tools to manage elections effectively.

---

## Features

### For Voters:
- **Registration and Login**: Secure onboarding with email validation and password encryption.
- **Vote Casting**: Participate in elections securely with real-time validation.
- **Results View**: Access detailed results for completed elections.

### For Administrators:
- **Election Management**: Create, update, and delete elections.
- **Candidate Management**: Add, update, and manage candidates.
- **Reporting**: Generate and export detailed PDF reports on election outcomes.
- **Dashboard**: Monitor platform activity and election statuses.

---

## Technologies Used
- **Programming Languages**: Python
- **Database**: MySQL
- **Frameworks**: Tkinter/CustomTkinter (GUI), ReportLab (PDF generation)
- **Libraries**: Pandas, TkCalendar, Matplotlib
- **Security**: Role-based access control, password encryption, SQL injection prevention

---

## Installation Guide

### Prerequisites
- **Operating System**: Windows, macOS, or Linux
- **Python Version**: 3.8 or higher
- **Database**: MySQL Server installed and configured
- **Package Manager**: PIP (Python package installer)

### Steps

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/your-username/online-voting-system.git
   ```

2. **Install Dependencies**:
   Navigate to the project directory and run:
   ```bash
   pip install -r requirements.txt
   ```

3. **Set Up the Database**:
   - Create a database:
     ```sql
     CREATE DATABASE online_voting_system;
     ```
   - Import the schema:
     ```bash
     mysql -u root -p online_voting_system < schema.sql
     ```
   - Update the `config.py` file with your database credentials.

4. **Run the Application**:
   Execute the following command to start the platform:
   ```bash
   python main.py
   ```

---

## Usage

### Voters
- Register and log in to the platform.
- Participate in active elections.
- View results of completed elections.

### Administrators
- Log in to manage elections and candidates.
- Generate reports and monitor platform activity.

---

## System Design
- **Relational Database**: Structured to ensure seamless data flow between users, elections, and reports.
- **Data Security**: Implements role-based access, encrypted communication, and password protection.
- **Scalable Architecture**: Handles increasing user load without compromising performance.

---

## Key Screens
- **Landing Page**: Overview of platform functionality.
- **Dashboard**:
  - Voters: Track election participation and results.
  - Admins: Manage elections and generate reports.
- **Election Management**: Create, edit, or delete elections.
- **Reports**: View or export detailed analytics on platform usage.

---

## Future Enhancements
- **Mobile App Integration**: Extend platform functionality to mobile devices.
- **AI-based Vote Analysis**: Use machine learning for trend analysis and insights.
- **Advanced Analytics**: Provide predictive insights on voter participation and election outcomes.

---

## Contributors
- Gattineni Harshitha
- Edulakanti Vamshi Krishna
- Kandi Vamshidhar Reddy
- Akkala Viswa Vinoothna
- Gopireddy Anjali

---

## License
This project is licensed under the MIT License.

---

## Contact
For any questions or feedback, feel free to reach out:

- **Email**: harshitha.gattineni@gmail.com
- **LinkedIn**: [Harshitha Gattineni](https://www.linkedin.com/in/harshitha-gattineni-0478a11a5/)
- **GitHub**: [GitHub Profile](https://github.com/HarshithaGattineni)

