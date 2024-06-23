# Zotero ➡️ Readwise
`zotero2readwise` is a Python library that retrieves all [Zotero](https://www.zotero.org/) annotations† and notes. 
Then, It automatically uploads them to your [Readwise](https://readwise.io/)§. 

This is particularly useful for the new [Zotero PDF Reader](https://www.zotero.org/support/pdf_reader_preview) 
that stores all highlights in the Zotero database. 
The new Zotero, also available for [iOS app](https://www.zotero.org/iosbeta) (currently in beta). 
In the new Zotero, the annotations are NOT saved in the PDF file unless you export the highlights in order to save them.

If you annotate your files outside the new Zotero PDF reader, this library may not work with your PDF annotations as those are not retrievable from Zotero API.

**The original repository please follow the link**
[Zotero2Readwise](https://github.com/e-alizadeh/Zotero2Readwise)

# Installation
## Build the dockerfile by your self
### Build by yourself
```shell
docker build -t zotero2readwise  .
```
### Pull the current image
```shell
docker pull 
```
#TODO:upload and correct this

## Run the container
```shell
docker run -d --name zotero2readwise-container \
    -e READWISE_API_KEY=<your_readwise_token> \
    -e ZOTERO_API_KEY=<your_zotero_key> \
    -e ZOTERO_USER_ID=<your_zotero_id> \
    zotero2readwise
```