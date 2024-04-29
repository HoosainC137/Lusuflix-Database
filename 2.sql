--Create admin role for Sales Manager as well as login
use LusuFlix;
create login Cashier with password='18032023';
create user Emplyoee for login SalesManager;

Grant connect to Manager;