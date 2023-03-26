# Convert booklist API project to DRF

## Shell commands 

```
# Activate virtual environment using pipenv 
pipenv shell
pipenv install

# Making migrations
python3 manage.py makemigrations
python3 manage.py migrate
```

## Solution code for models.py
```
from django.db import models

# Create your models here.
class Book(models.Model):
    title = models.CharField(max_length=255)
    author = models.CharField(max_length=255)
    price = models.DecimalField(max_digits=5, decimal_places=2)
```

## Solution code for views.py

```
from django.shortcuts import render

# Create your views here.

from .models import Book
from .serializers import BookSerializer
from rest_framework import generics

class BookView(generics.ListCreateAPIView):
    queryset = Book.objects.all()
    serializer_class = BookSerializer

class SingleBookView(generics.RetrieveUpdateAPIView):
    queryset = Book.objects.all()
    serializer_class = BookSerializer
```
