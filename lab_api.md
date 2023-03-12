# My firsdt API

>  Create my project using plain Django and implement the Book list API project. These include APIs to add new books, list available books and search for a specific book.
Objectives :
1. Practice creating a Django model for a database table
2. Create a function-based view
3. Run the server to display the output of your APIs
4. Use GET and POST methods to update a database table built from the model

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

    class Meta:
        indexes = [
            models.Index(fields=['price']),
        ]
```

## Solution code for urls.py (app-level)
```
from django.urls import path
from . import views

urlpatterns = [
    path('books',views.books),
]
```

## Solution code for views.py

from django.db import IntegrityError
from django.http import HttpResponse, JsonResponse
from .models import Book
from django.views.decorators.csrf import csrf_exempt
from django.forms.models import model_to_dict


# Create your views here.
```
@csrf_exempt
def books(request):
    if request.method == 'GET':
        books = Book.objects.all().values()
        return JsonResponse({"books":list(books)})
    elif request.method == 'POST':
        title = request.POST.get('title')
        author = request.POST.get('author')
        price = request.POST.get('price')
        book = Book(
            title = title,
            author = author,
            price = price
        )
        try:
            book.save()
        except IntegrityError:
            return JsonResponse({'error':'true','message':'required field missing'},status=400)

        return JsonResponse(model_to_dict(book), status=201)
```  
