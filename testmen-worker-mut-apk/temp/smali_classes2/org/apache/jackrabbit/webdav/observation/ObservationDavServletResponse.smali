.class public interface abstract Lorg/apache/jackrabbit/webdav/observation/ObservationDavServletResponse;
.super Ljava/lang/Object;
.source "ObservationDavServletResponse.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/DavServletResponse;


# virtual methods
.method public abstract sendPollResponse(Lorg/apache/jackrabbit/webdav/observation/EventDiscovery;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sendSubscriptionResponse(Lorg/apache/jackrabbit/webdav/observation/Subscription;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
