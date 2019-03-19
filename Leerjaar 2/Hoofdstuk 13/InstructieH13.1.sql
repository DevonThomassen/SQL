USE HR;
GO

-- Maak een view aan
CREATE VIEW vwEmployeesWithJobs
AS
SELECT [firstname], [lastname], [jobtitle]
FROM [employee]
INNER JOIN job
ON [employee].[jobId] = [job].[jobId];

-- Wijzig inhoud van view
ALTER VIEW vwEmployeesWithJobs
AS
SELECT [firstname], [lastname], [jobtitle]
FROM [employee]
INNER JOIN [job]
ON [job].[jobId] = [employee].[jobId];

-- Toon inhoud van view
SELECT * 
FROM vwEmployeesWithJobs;
