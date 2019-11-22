# Objective: Finish building out the School application

** Make any necessary changes/edits to the existing code to complete the following deliverables **

# Getting Started:

1. Run bundle install
2. migrate
3. seed

# Deliverables:

#- A School must have a *unique* name and an address

#- A School has many Students

#- A Student must have a *unique* full_name and an age

#- A Student belongs to a School

#- The School index page should list all schools

#  - Each school on the index page should link to its show page

# - The School show page should list all of the school's students

#  - Each student should link to that student's show page
#  - User should be able to delete a Student from the School's show page
  
#- The Student show page should show their name, age, and the school they're apart of

#- User should be able to create a student and select which school the student belongs to

#- User should be able to edit a student

# BONUS:
- Add a search form to the School show page that allows a user to search for a student by name
# - Add a custom route to a "support" page that has a "contact us" form
#  - Form should ask for the User to enter their name, email, and reason for contacting
#  - Once the form is submitted, it routes the User to the School index page 
  
 ## EXTRA BONUS: 
 - Add a Teacher model
  - A Teacher has many Students
  - A Student has many Teachers
  - A `Student` and `Teacher` are joined by a `Course`
 - Build out full CRUD for `Teacher` and `Course`
