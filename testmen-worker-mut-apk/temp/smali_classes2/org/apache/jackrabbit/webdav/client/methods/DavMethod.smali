.class public interface abstract Lorg/apache/jackrabbit/webdav/client/methods/DavMethod;
.super Ljava/lang/Object;
.source "DavMethod.java"

# interfaces
.implements Lorg/apache/commons/httpclient/HttpMethod;


# virtual methods
.method public abstract addRequestHeader(Lorg/apache/jackrabbit/webdav/header/Header;)V
.end method

.method public abstract checkSuccess()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getResponseBodyAsDocument()Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getResponseBodyAsMultiStatus()Lorg/apache/jackrabbit/webdav/MultiStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method

.method public abstract getResponseException()Lorg/apache/jackrabbit/webdav/DavException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setRequestHeader(Lorg/apache/jackrabbit/webdav/header/Header;)V
.end method

.method public abstract succeeded()Z
.end method
