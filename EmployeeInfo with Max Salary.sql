SELECT e.Id, e.EmployeeId, e.EmployeeName, e.Designation, e.Department, e.DateOfJoin, s.Salary
FROM EmployeesInfo e
JOIN Salary s ON e.Id = s.EmployeeInfoId
WHERE s.Salary = (SELECT MAX(Salary) FROM Salary);
