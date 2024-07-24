-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

CREATE TABLE [Titles] (
    [title_id] VARCHAR  NOT NULL ,
    [title] VARCHAR  NOT NULL ,
    CONSTRAINT [PK_Titles] PRIMARY KEY CLUSTERED (
        [title_id] ASC
    )
)

CREATE TABLE [Employees] (
    [emp_no] INTEGER  NOT NULL ,
    [emp_title_id] VARCHAR  NOT NULL ,
    [birth_date] VARCHAR  NOT NULL ,
    [first_name] VARCHAR(255)  NOT NULL ,
    [last_name] VARCHAR(255)  NOT NULL ,
    [sex] CHAR  NOT NULL ,
    [hire_date] VARCHAR(255)  NOT NULL ,
    CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED (
        [emp_no] ASC
    )
)

CREATE TABLE [Departments] (
    [dept_no] VARCHAR  NOT NULL ,
    [dept_name] VARCHAR  NOT NULL ,
    CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED (
        [dept_no] ASC
    )
)

CREATE TABLE [Dept_emp] (
    [emp_no] INTEGER  NOT NULL ,
    [dept_no] VARCHAR  NOT NULL ,
    CONSTRAINT [PK_Dept_emp] PRIMARY KEY CLUSTERED (
        [emp_no] ASC,[dept_no] ASC
    )
)

CREATE TABLE [Dept_manager] (
    [dept_no] VARCHAR  NOT NULL ,
    [emp_no] INTEGER  NOT NULL ,
    CONSTRAINT [PK_Dept_manager] PRIMARY KEY CLUSTERED (
        [dept_no] ASC,[emp_no] ASC
    )
)

CREATE TABLE [Salaries] (
    [emp_no] INT  NOT NULL ,
    [salary] INT  NOT NULL ,
    CONSTRAINT [PK_Salaries] PRIMARY KEY CLUSTERED (
        [emp_no] ASC
    )
)

ALTER TABLE [Employees] WITH CHECK ADD CONSTRAINT [FK_Employees_emp_title_id] FOREIGN KEY([emp_title_id])
REFERENCES [Titles] ([title_id])

ALTER TABLE [Employees] CHECK CONSTRAINT [FK_Employees_emp_title_id]

ALTER TABLE [Dept_emp] WITH CHECK ADD CONSTRAINT [FK_Dept_emp_emp_no] FOREIGN KEY([emp_no])
REFERENCES [Employees] ([emp_no])

ALTER TABLE [Dept_emp] CHECK CONSTRAINT [FK_Dept_emp_emp_no]

ALTER TABLE [Dept_emp] WITH CHECK ADD CONSTRAINT [FK_Dept_emp_dept_no] FOREIGN KEY([dept_no])
REFERENCES [Departments] ([dept_no])

ALTER TABLE [Dept_emp] CHECK CONSTRAINT [FK_Dept_emp_dept_no]

ALTER TABLE [Dept_manager] WITH CHECK ADD CONSTRAINT [FK_Dept_manager_dept_no] FOREIGN KEY([dept_no])
REFERENCES [Departments] ([dept_no])

ALTER TABLE [Dept_manager] CHECK CONSTRAINT [FK_Dept_manager_dept_no]

ALTER TABLE [Dept_manager] WITH CHECK ADD CONSTRAINT [FK_Dept_manager_emp_no] FOREIGN KEY([emp_no])
REFERENCES [Employees] ([emp_no])

ALTER TABLE [Dept_manager] CHECK CONSTRAINT [FK_Dept_manager_emp_no]

ALTER TABLE [Salaries] WITH CHECK ADD CONSTRAINT [FK_Salaries_emp_no] FOREIGN KEY([emp_no])
REFERENCES [Employees] ([emp_no])

ALTER TABLE [Salaries] CHECK CONSTRAINT [FK_Salaries_emp_no]

COMMIT TRANSACTION QUICKDBD