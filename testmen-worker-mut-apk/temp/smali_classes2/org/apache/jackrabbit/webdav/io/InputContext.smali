.class public interface abstract Lorg/apache/jackrabbit/webdav/io/InputContext;
.super Ljava/lang/Object;
.source "InputContext.java"


# virtual methods
.method public abstract getContentLanguage()Ljava/lang/String;
.end method

.method public abstract getContentLength()J
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
.end method

.method public abstract getModificationTime()J
.end method

.method public abstract getProperty(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract hasStream()Z
.end method
