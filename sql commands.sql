
-- displays professors with subjects and all ids

select * from professors 
inner join courses on professors.id = courses.professor_id;


-- displays a specific professors name and all the courses they teach with all ids

select professors.name, courses.name from professors 
inner join courses  on professors.id = courses.professor_id 
where professors.name = "Jones";

-- displays everything for everybody

select * from professors 
inner join courses  on professors.id = courses.professor_id 
inner join subjects on courses.subject_id = subjects.id;

-- displays the name subject and course when searching for "Science"
select professors.name, subjects.name, courses.name from professors 
inner join courses  on professors.id = courses.professor_id 
inner join subjects on courses.subject_id = subjects.id
where subjects.name = "Science";

--displays all the professors teaching Physics 2

select professors.name, subjects.name, courses.name from professors 
inner join courses  on professors.id = courses.professor_id 
inner join subjects on courses.subject_id = subjects.id
where courses.name = "Physics 2";

--displays all the info on classes that start with P

select professors.name, subjects.name, courses.name from professors 
inner join courses  on professors.id = courses.professor_id 
inner join subjects on courses.subject_id = subjects.id
where courses.name Like "P%";

--display all courses that start after 

select * from courses where courses.start_date > "2014-12-01"


