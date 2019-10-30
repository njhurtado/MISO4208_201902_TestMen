.class public Lorg/apache/jackrabbit/webdav/client/methods/UnSubscribeMethod;
.super Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;
.source "UnSubscribeMethod.java"


# static fields
.field private static log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/apache/jackrabbit/webdav/client/methods/UnSubscribeMethod;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/client/methods/UnSubscribeMethod;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "subscriptionId"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;-><init>(Ljava/lang/String;)V

    .line 33
    const-string v0, "SubscriptionId"

    invoke-virtual {p0, v0, p2}, Lorg/apache/jackrabbit/webdav/client/methods/UnSubscribeMethod;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "UNSUBSCRIBE"

    return-object v0
.end method

.method protected isSuccess(I)Z
    .locals 1
    .param p1, "statusCode"    # I

    .prologue
    .line 45
    const/16 v0, 0xcc

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
