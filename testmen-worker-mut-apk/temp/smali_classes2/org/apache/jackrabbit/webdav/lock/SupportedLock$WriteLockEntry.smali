.class final Lorg/apache/jackrabbit/webdav/lock/SupportedLock$WriteLockEntry;
.super Lorg/apache/jackrabbit/webdav/lock/AbstractLockEntry;
.source "SupportedLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/jackrabbit/webdav/lock/SupportedLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WriteLockEntry"
.end annotation


# instance fields
.field private final scope:Lorg/apache/jackrabbit/webdav/lock/Scope;


# direct methods
.method constructor <init>(Lorg/apache/jackrabbit/webdav/lock/Type;Lorg/apache/jackrabbit/webdav/lock/Scope;)V
    .locals 3
    .param p1, "type"    # Lorg/apache/jackrabbit/webdav/lock/Type;
    .param p2, "scope"    # Lorg/apache/jackrabbit/webdav/lock/Scope;

    .prologue
    .line 140
    invoke-direct {p0}, Lorg/apache/jackrabbit/webdav/lock/AbstractLockEntry;-><init>()V

    .line 141
    sget-object v0, Lorg/apache/jackrabbit/webdav/lock/Type;->WRITE:Lorg/apache/jackrabbit/webdav/lock/Type;

    invoke-virtual {v0, p1}, Lorg/apache/jackrabbit/webdav/lock/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    sget-object v0, Lorg/apache/jackrabbit/webdav/lock/Scope;->EXCLUSIVE:Lorg/apache/jackrabbit/webdav/lock/Scope;

    invoke-virtual {v0, p2}, Lorg/apache/jackrabbit/webdav/lock/Scope;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/apache/jackrabbit/webdav/lock/Scope;->SHARED:Lorg/apache/jackrabbit/webdav/lock/Scope;

    invoke-virtual {v0, p2}, Lorg/apache/jackrabbit/webdav/lock/Scope;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid scope:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_1
    iput-object p2, p0, Lorg/apache/jackrabbit/webdav/lock/SupportedLock$WriteLockEntry;->scope:Lorg/apache/jackrabbit/webdav/lock/Scope;

    .line 148
    return-void
.end method


# virtual methods
.method public getScope()Lorg/apache/jackrabbit/webdav/lock/Scope;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/lock/SupportedLock$WriteLockEntry;->scope:Lorg/apache/jackrabbit/webdav/lock/Scope;

    return-object v0
.end method

.method public getType()Lorg/apache/jackrabbit/webdav/lock/Type;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lorg/apache/jackrabbit/webdav/lock/Type;->WRITE:Lorg/apache/jackrabbit/webdav/lock/Type;

    return-object v0
.end method
