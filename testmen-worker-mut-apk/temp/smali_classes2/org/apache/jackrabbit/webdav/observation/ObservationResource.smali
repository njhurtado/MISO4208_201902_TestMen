.class public interface abstract Lorg/apache/jackrabbit/webdav/observation/ObservationResource;
.super Ljava/lang/Object;
.source "ObservationResource.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/DavResource;


# static fields
.field public static final METHODS:Ljava/lang/String; = "SUBSCRIBE, UNSUBSCRIBE, POLL"


# virtual methods
.method public abstract init(Lorg/apache/jackrabbit/webdav/observation/SubscriptionManager;)V
.end method

.method public abstract poll(Ljava/lang/String;J)Lorg/apache/jackrabbit/webdav/observation/EventDiscovery;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method

.method public abstract subscribe(Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/observation/Subscription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method

.method public abstract unsubscribe(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method
