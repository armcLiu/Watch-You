Create table tblImages
(
 [ID] int identity primary key,
 [Name] nvarchar(50),
 [Order] int
) 

Insert into tblImages values('Watch1.jpg',1)
Insert into tblImages values('Watch2.jpg',2)
Insert into tblImages values('Watch3.jpg',3)
Insert into tblImages values('Watch4.jpg',4)
Insert into tblImages values('Watch5.jpg',5)
Insert into tblImages values('Watch6.jpg',6)
Insert into tblImages values('Watch7.jpg',7)
Insert into tblImages values('Watch8.jpg',8)


Create procedure spGetImageData
as
Begin
 Select [Name], [Order] from tblImages
End