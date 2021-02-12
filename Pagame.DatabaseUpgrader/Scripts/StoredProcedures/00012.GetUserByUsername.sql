﻿IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.ROUTINES WHERE SPECIFIC_NAME = 'GetUserByUsername')
DROP PROCEDURE [dbo].[GetUserByUsername]
GO
CREATE PROCEDURE [dbo].[GetUserByUsername]
    @userName VARCHAR(50)
AS
BEGIN
SETNOCOUNTON;
    SELECT * FROM Users
    WHERE userName = @userName
END
GO
