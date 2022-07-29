CREATE PROCEDURE Acmeinsertupdatedelete (  @id INT,
                                          @first_name VARCHAR(50),
                                          @last_name  VARCHAR(50),
                                          @License_Number INT,
                                          @L_Expiry DATE,
										  @StatementType NVARCHAR(20) = '')
AS
  BEGIN
      IF @StatementType = 'Insert'
        BEGIN
            INSERT INTO tbl_Details
                        (driverID,
                         First_Name,
                         Last_Name,
                         License_Number,
                         L_Expiry)
            VALUES     ( @id,
                         @first_name,
						 @last_name,
                         @License_Number,
                         @L_Expiry)
        END
    IF @StatementType = 'Select'
        BEGIN
            SELECT *
            FROM   tbl_Details
        END

      IF @StatementType = 'Update'
        BEGIN
            UPDATE tbl_Details
            SET    First_Name = @first_name,
                   Last_Name = @last_name,
                   License_Number = @License_Number,
                   L_Expiry = @L_Expiry
            WHERE  driverID = @id
        END
      ELSE IF @StatementType = 'Delete'
        BEGIN
            DELETE FROM tbl_Details
            WHERE  driverID = @id
        END
  END