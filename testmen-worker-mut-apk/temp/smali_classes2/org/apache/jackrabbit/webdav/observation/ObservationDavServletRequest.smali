.class public interface abstract Lorg/apache/jackrabbit/webdav/observation/ObservationDavServletRequest;
.super Ljava/lang/Object;
.source "ObservationDavServletRequest.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/DavServletRequest;


# virtual methods
.method public abstract getPollTimeout()J
.end method

.method public abstract getSubscriptionId()Ljava/lang/String;
.end method

.method public abstract getSubscriptionInfo()Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method
