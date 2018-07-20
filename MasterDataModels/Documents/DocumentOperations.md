# Operations

## Mandatory core operations

The mandatory operations to be supported are CRUD operations on files.

	   GET  /root/<full-path-to-file>    - If target is a document, retrieves the document content (with the appropriate mime type).
	                                       If target is a directory, list all the children files.
	  POST  /root/<full-path-to-file>    - Target must not exist. Creates document or directory depending on request body.
	   PUT  /root/<full-path-to-file>    - Target must be a document. Overrides document (or adds a new version if versionning is supported).
	DELETE  /root/<full-path-to-file>    - Deletes document or directory

	  POST  /do?cmd=copy&from=...        - To copy a document/directory
	  POST  /do?cmd=move&from=...        - To move a document/directory


## Optional generic operations

This more fine-grained API handles everything on `id` level for efficience purposes and clearly distinguishes between file content and file meta data.

Generally speaking, HTTP verbs are used as follows:

	   GET - retrieves the requested information
	  POST - adds a new entry
	   PUT - replaces an existing entry
	 PATCH - partially edits an existing entry
	DELETE - deletes it

There is also two API calls to detect version and feature set.

	GET /version             Returns the version of the REST API it implements
	GET /features            Returns a dictionary of booleans indicating which features are available.
	                         For example, a system supporting versionning and file sharing should return: 
	                             {"versions":true, "shares":true}
	
The following generic operations are common to most systems:
	
	* /config                           System configuration: backups, replication, options...
	
	* /files/{id}/info                  File informations: type, fullPath, owner, lastModified, description...
	* /files/{id}/content               (for documents only) Document's content
	* /files/{id}/children              (for directories only) Directory's children files.

	* /files/{id}/versions                (for documents only) Lists document versions
	* /files/{id}/versions/{id}/info      Version informations: comment, size, md5...
	* /files/{id}/versions/{id}/content   Version's content

	* /files/{id}/shares                  Share links associated with document or directory
	* /files/{id}/permissions             Unix permissions or full ACL
	* /files/{id}/lock                    File locking
	* /files/{id}/comments                A list of comments: author, timestamp, title, message, inResponseTo...
	* /files/{id}/settings                Settings like: retention/deletion rules, encryption, notifications,...
	 
	GET /search?pattern=...               Finds all documents matching pattern and fitting the provided criteria.

	POST /do?cmd={name}...                Applies an arbitrary system specific operation
	
The following operations are related to customizable and arbitrary meta data associated with the file:
	
	 *  /files/{id}/meta                      Arbitrary meta data "dictionary"
	 *  /files/{id}/meta/{name}               A meta data "object" is identified by its name, and can have its own schema definition and permissions, as defined in /meta/{name}
	 *  /files/{id}/meta/{name}/...           Since meta data is arbitrarily big, it is allowed to fetch/modify a specific entry directly
	 
	 *  /meta                                 Meta data definitions
	 *  /meta/{name}/schema                   Meta data can optionally be defined using a JSON schema.
	 *  /meta/{name}/permissions              Meta data can have specific permissions that overrides the file's permissions.
	