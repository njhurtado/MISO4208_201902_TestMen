.class public interface abstract Lorg/apache/jackrabbit/webdav/lock/ActiveLock;
.super Ljava/lang/Object;
.source "ActiveLock.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;


# virtual methods
.method public abstract getLockroot()Ljava/lang/String;
.end method

.method public abstract getOwner()Ljava/lang/String;
.end method

.method public abstract getScope()Lorg/apache/jackrabbit/webdav/lock/Scope;
.end method

.method public abstract getTimeout()J
.end method

.method public abstract getToken()Ljava/lang/String;
.end method

.method public abstract getType()Lorg/apache/jackrabbit/webdav/lock/Type;
.end method

.method public abstract isDeep()Z
.end method

.method public abstract isExpired()Z
.end method

.method public abstract isLockedByToken(Ljava/lang/String;)Z
.end method

.method public abstract setIsDeep(Z)V
.end method

.method public abstract setLockroot(Ljava/lang/String;)V
.end method

.method public abstract setOwner(Ljava/lang/String;)V
.end method

.method public abstract setTimeout(J)V
.end method
