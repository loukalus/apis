mkdir Littelemon 
cd Littelemon

# use pipenv to setting up Django and creating the virtual environment for the project
pipenv install django

# Activate the virtual environnement
pipenv shell 

# Create a new Django projet 
django-admin startproject LittleLemon .

# Create The app 
python manage.py startapp LittellemonAPI 


# To run the server 
python manage.py runserver 8899 

# Or run the server on the default port 8000 
python manage.py runserver

