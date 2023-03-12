# REST best practices

> REST's essential best practices that every API developer should know.  

## KISS
- **K**eep **I**t **S**uper **S**imple : keeping your API endpoints simple and focused.
A single API should do one specific job and do it well.  


## Filter, order and paginate
You should always provide a way to filter large result sets and rearrange them in ascending or descending order. Using pagination, you can deliver results in smaller chunks.  
When building an API, it is always a good idea to enable it to send results in smaller chunks.  
This API requests 4 items from page number 10, from a total page count of 16:
```
/menu-items?perpage=4&page=10
```

## Versioning
- You know that you may break a client's applications if you make changes to your API that might drastically change the response ? It's better to be safe and use versioning for your apps.
- There are several factors to consider when deciding if an updated version is needed or if a modification to an existing representation is enough.
- In general, you should only support two versions of any given resource, because maintaining multiple versions can be complex, error prone, and costly.

## Caching
- API should be cacheable because it reduces the load on your database-related API calls.
- You should always implement cacheing and send relevant HTTP headers in your response. This will minimize the number of calls your client makes to your API.
- For example, if the mobile app makes a call to the endpoint menu-items, you can cache the results the first time it runs, and then serve the cached result every time after that.

## Rate limiting and Monitoring
- Prevent abuse of your APIs, try rate limiting. This limits the number of times someone can call your API in a period of time, like per minute, hour, or day. Some people even limit their APIs per 30 days.
- You should monitor latency to make sure your clients are getting the best possible response time. If you are looking to get the most out of your API, it is essential to also monitor status codes.
- Monitoring network bandwidth is also important to know if someone is abusing your API.


