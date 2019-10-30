.class public Lorg/apache/jackrabbit/webdav/client/methods/UnLockMethod;
.super Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;
.source "UnLockMethod.java"


# static fields
.field private static log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/apache/jackrabbit/webdav/client/methods/UnLockMethod;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/client/methods/UnLockMethod;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "lockToken"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;-><init>(Ljava/lang/String;)V

    .line 37
    new-instance v0, Lorg/apache/jackrabbit/webdav/header/CodedUrlHeader;

    const-string v1, "Lock-Token"

    invoke-direct {v0, v1, p2}, Lorg/apache/jackrabbit/webdav/header/CodedUrlHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .local v0, "lth":Lorg/apache/jackrabbit/webdav/header/Header;
    invoke-virtual {p0, v0}, Lorg/apache/jackrabbit/webdav/client/methods/UnLockMethod;->setRequestHeader(Lorg/apache/jackrabbit/webdav/header/Header;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "UNLOCK"

    return-object v0
.end method

.method protected isSuccess(I)Z
    .locals 1
    .param p1, "statusCode"    # I

    .prologue
    .line 59
    const/16 v0, 0xcc

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
