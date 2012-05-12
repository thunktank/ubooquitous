# Ubooquitous definitions

* A Book for our purposes is a kind of digital media.

* A Book can have many BookVersions. 
	
	Examples of BookVersion: early-access, a new edition, a new printing (with erratum)...

* A BookVersion will have:
	* a title (extracted from a Content?)
	* one or more Authors
	* one or more Contents
	* a time-stamp, published

* A BookVersion _may_ have:
	* an ISBN
	* a Publisher

* Content can be in one of many mediaTypes
	* pdf, epub, mobi, html, ods, doc, docx, text...
	* Content is tagged with its mediaType
	* Content has a location

* Each BookVersion may have an ISBN or may not..
	* Self-published books (typically?) won't have ISBNs
	* Some publishers, e.g. Manning won't assign an ISBN until the book is complete

* The title of a book may change during its writing, or across editions

* The Author(s) may change across BookVersions

* An Author may have pseudonyms.

* The Publisher may not exist or may change across BookVersions. 

* Publisher may be a collection of companies in different regions.

* A BookVersion is hard to uniquely identify...
	* An ISBN may be used across several printings?
	* A BookVersion belongs to a Book because _you say so_.
	* There is a chronological sequence of BookVersions of a given Book, identified by BookVersion.published
	
* A Library contains one or more Books

* A Library belongs to a Member

* A Book can be shared with other Members

* A Library can be shared with other Members






