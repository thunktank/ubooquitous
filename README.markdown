# Ubooquitous

### _A personal cloud-based library_

This project serves two purposes:

* it's a place to stash an ever-growing pile of ebooks
* it's an opportunity to play with technologies we can't use in our day jobs

Initially its a Rails app to manage the library content and access.  
The books themselves will be versioned, so they may be stored in a (Git) repository rather than a database.  

We want to add a full-text search facility across the library, so the intention is to hook up [Apache Solr][Solr], using the Ruby bindings.  

It would be nice to pull in metadata from Amazon and Google Books.

There'll probably be client-side caching of books for reading, so that should be an opportunity to get into some HTML5 local sandboxed storage and/or JavaScript.

[Solr]: http://lucene.apache.org/solr/
