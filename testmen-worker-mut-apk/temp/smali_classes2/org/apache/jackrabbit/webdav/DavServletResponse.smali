.class public interface abstract Lorg/apache/jackrabbit/webdav/DavServletResponse;
.super Ljava/lang/Object;
.source "DavServletResponse.java"

# interfaces
.implements Ljavax/servlet/http/HttpServletResponse;


# static fields
.field public static final SC_FAILED_DEPENDENCY:I = 0x1a8

.field public static final SC_INSUFFICIENT_SPACE_ON_RESOURCE:I = 0x1fb

.field public static final SC_LOCKED:I = 0x1a7

.field public static final SC_MULTI_STATUS:I = 0xcf

.field public static final SC_PROCESSING:I = 0x66

.field public static final SC_UNPROCESSABLE_ENTITY:I = 0x1a6


# virtual methods
.method public abstract sendError(Lorg/apache/jackrabbit/webdav/DavException;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sendMultiStatus(Lorg/apache/jackrabbit/webdav/MultiStatus;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sendRefreshLockResponse([Lorg/apache/jackrabbit/webdav/lock/ActiveLock;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sendXmlResponse(Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
