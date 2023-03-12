# REST best practices

REST's essential best practices that every API developer should know. 

## KISS 
- **K**eep **I**t **S**uper **S**imple : keeping your API endpoints simple and focused.


## Filter, order and paginate
You should always provide a way to filter large result sets and rearrange them in ascending or descending order. Using pagination, you can deliver results in smaller chunks.  
When building an API, it is always a good idea to enable it to send results in smaller chunks. 
This API requests 4 items from page number 10, from a total page count of 16:
```
/menu-items?perpage=4&page=10
```


