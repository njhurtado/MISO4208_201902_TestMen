.class public interface abstract Lorg/apache/jackrabbit/webdav/observation/SubscriptionManager;
.super Ljava/lang/Object;
.source "SubscriptionManager.java"


# virtual methods
.method public abstract getSubscriptionDiscovery(Lorg/apache/jackrabbit/webdav/observation/ObservationResource;)Lorg/apache/jackrabbit/webdav/observation/SubscriptionDiscovery;
.end method

.method public abstract poll(Ljava/lang/String;JLorg/apache/jackrabbit/webdav/observation/ObservationResource;)Lorg/apache/jackrabbit/webdav/observation/EventDiscovery;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method

.method public abstract subscribe(Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/observation/ObservationResource;)Lorg/apache/jackrabbit/webdav/observation/Subscription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method

.method public abstract unsubscribe(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/observation/ObservationResource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method
