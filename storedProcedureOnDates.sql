CREATE PROCEDURE storeDates
AS
BEGIN
  DECLARE @date DATE;
  DECLARE @yearToDate varchar(30);
  DECLARE @quarterToDate varchar(30);
  DECLARE @monthToDate varchar(30);

  SET @date = GETDATE();
  SET @yearToDate = DATEADD(year, -1 , GeTDATE() - day( getdate() -1 ));
  SET @quarterToDate = DATEADD(QUARTER, -1 , GETDATE() - day( GETDATE() - 1));
  SET @monthToDate =  DATEADD(month, -1 , GETDATE() - day( getdate() - 1));

  INSERT INTO dates(date,YTD,QTD,MTD)
  VALUES(@date,@yearToDate,@quarterToDate,@monthToDate)

END 

EXEC storeDates

select * from Dates

