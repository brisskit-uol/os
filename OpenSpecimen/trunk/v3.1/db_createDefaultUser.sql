insert into catissue_institution 
 (identifier, name, activity_status)
values 
 (1, 'LCBRU', 'Active');
 
insert into os_departments
  (identifier, name, institute_id)
values
  (1, 'LCBRU', 1);
 
insert into catissue_user
  (identifier, email_address, first_name, last_name, login_name, activity_status, department_id,
   password, domain_name, is_admin, address)
values
  (1, 'lcbruit@le.ac.uk', 'LCBRU', 'User', 'lcbru', 'Active', 1,
   '$2a$10$GOH1.KmElP0ZusLYS6l12ejO.xAIzDUFpIm7LVz9xAcrObyvd3gLC', 'openspecimen', 1, 'LCBRU');

#This will create user and set password to Login!@3