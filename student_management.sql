select * from student_management_system;

#Find Students Enrolled in a Specific Department
SELECT * FROM student_management_system WHERE Department = 'CSE';

#Get the Count of Students in Each Department
SELECT Department, COUNT(*) AS Total_Students FROM student_management_system GROUP BY Department;

#Find Students Who Enrolled After 2020
SELECT * FROM student_management_system WHERE EnrollmentYear > 2020;

#Retrieve Student Details Based on Last Name
SELECT * FROM student_management_system WHERE LastName = 'Smith';

#Retrieve Students with a Specific CGPA
SELECT * FROM student_management_system WHERE CGPA > 3.5;

# Sort Students by Enrollment Year (Latest First)
SELECT * FROM student_management_system ORDER BY EnrollmentYear DESC;

#Find the Youngest Student (Based on Date of Birth)
SELECT * FROM student_management_system ORDER BY DateOfBirth DESC LIMIT 1;

#Get the Oldest Student in the Database
SELECT * FROM student_management_system ORDER BY DateOfBirth ASC LIMIT 1;


#Get the Average CGPA for Each Department
SELECT Department, AVG(CGPA) AS Avg_CGPA FROM student_management_system GROUP BY Department;

 #Retrieve Contact Information for Students
 SELECT FirstName, LastName, Email, Phone FROM student_management_system;
 
 # Find Students with Missing Email Addresses
 SELECT * FROM student_management_system WHERE Email IS NULL;
 
# Count Students Who Have Not Provided a Phone Number
SELECT COUNT(*) FROM student_management_system WHERE Phone IS NULL OR Phone = '';

#Find the Department with the Highest Number of Students
SELECT Department FROM student_management_system GROUP BY Department ORDER BY COUNT(*) DESC LIMIT 1;

#Find the Department with the Lowest Number of Students
SELECT Department FROM student_management_system GROUP BY Department ORDER BY COUNT(*) asc LIMIT 1;












