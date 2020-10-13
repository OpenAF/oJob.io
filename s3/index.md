## Authenticating

### Using OpenAF's $sec

If you set S3 credentials using "$sec", for example:

````javascript
> $sec(void 0, "myEnv").setObj("s3", "S3", { aURL: "https://s3.somewhere.cloud", aAccessKey: "ABC", aSecret: "123", aRegion: "ab-xyz" }))
````

you can reference it like this:

````bash
ojob ojob.io/s3 secbucket=myEnv seckey=s3 ...
````

To use all possible "$sec" variables:

````bash
ojob ojob.io/s3 secrepo=aRepo secbucket=aBucket secpass=pass123
````

## Available operations

| op | Description |
|----|-------------|
| [buckets](#buckets) | _List the available buckets._ |
| [mkbucket](#mkbucket) | _Creates a new bucket._ |
| [rmbucket](#rmbucket) | _Remove an existing a bucket._ |
| [ls](#ls) | _List objects in a bucket._ |
| [put](#put) | _Put a file in a bucket._ |
| [get](#get) | _Get an object from a bucket._ |
| [mput](#mput) | _Put several files in a bucket._ |
| [mget](#mget) | _Get several files from a bucket._ |
| [cp](#cp) | _Copies an object from a source bucket to a target bucket (can be the same)._ |
| [mv](#mv) | _Moves an object from a source bucket to a target bucket._ |
| [rm](#rm) | _Removes an object from a bucket._ |
| [stat](#stat) | _Retrieves the object metadata._ | 

### buckets

List the available buckets:

````bash
ojob ojob.io/s3 ... op=buckets
````

### mkbucket

Creates a new bucket:

````bash
ojob ojob.io/s3 ... op=mkbucket bucket=mynewbucket
````

### rmbucket

Removes an existing bucket:

````bash
ojob ojob.io/s3 ... op=rmbucket bucket=bucket2remove
````

### ls

Lists all the objects under a bucket:

````bash
ojob ojob.io/s3 ... op=ls bucket=bucket2list
````

You can filter the listing by providing a prefix:

````bash
ojob ojob.io/s3 ... op=ls bucket=bucket2list remote=my/folder/in/bucket
````

And include all metadata for each object with the "full" option:

````bash
ojob ojob.io/s3 ... op=ls bucket=bucket2list remote=my/folder/in/bucket full=y
````

### put

Transfer a local file to an object in a remote bucket:

````bash
ojob ojob.io/s3 ... op=put bucket=mybucket local=myFile.txt remote=my/folder/myFile.txt
````

### get

Transfer a remote object on a bucket to a local file:

````bash
ojob ojob.io/s3 ... op=get bucket=mybucket remote=my/folder/myFile.txt local=myFile.txt
````

### mput

Transfer a local folder to several objects in a remote bucket:

````bash
ojob ojob.io/s3 ... op=mput bucket=mybucket local=myFolder remote=my/folder
````

### mget

Transfer several objects in a remote bucket to a local folder:

````bash
ojob ojob.io/s3 ... op=mget bucket=mybucket remote=my/folder source=myLocalFile
````

### cp

Copies an object from a source bucket to a target bucket, which can be the same as the source bucket:

````bash
ojob ojob.io/s3 ... op=cp sbucket=mySourceBucket source=my/file.txt tbucket=myTargetBucket target=my/file.new
````

Example of copying on the same bucket:

````bash
ojob ojob.io/s3 ... op=cp bucket=myBucket source=my/file.txt target=my/old/file.txt
````

### mv

Moves an object from a source bucket to a target bucket, which can be the same as the source bucket:

````bash
ojob ojob.io/s3 ... op=mv sbucket=mySourceBucket source=my/file.old tbucket=myTargetBucket target=my/file.new
````

Example of moving on the same bucket:

````bash
ojob ojob.io/s3 ... op=mv bucket=myBucket source=my/file.old target=my/old/file.new
````

### rm

Removing an existing object from a bucket:

````bash
ojob ojob.io/s3 ... op=rm bucket=myBucket remote=my/file/toRemove.txt
````

### stat

To get the full metadata for an existing object on a bucket:

````bash
ojob ojob.io/s3 ... op=stat remote=my/file.txt
````