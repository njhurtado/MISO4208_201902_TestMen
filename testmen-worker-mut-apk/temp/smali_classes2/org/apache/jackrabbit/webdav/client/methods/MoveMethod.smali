.class public Lorg/apache/jackrabbit/webdav/client/methods/MoveMethod;
.super Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;
.source "MoveMethod.java"


# static fields
.field private static log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/apache/jackrabbit/webdav/client/methods/MoveMethod;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/client/methods/MoveMethod;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "destinationUri"    # Ljava/lang/String;
    .param p3, "overwrite"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;-><init>(Ljava/lang/String;)V

    .line 35
    const-string v0, "Destination"

    invoke-virtual {p0, v0, p2}, Lorg/apache/jackrabbit/webdav/client/methods/MoveMethod;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    new-instance v0, Lorg/apache/jackrabbit/webdav/header/OverwriteHeader;

    invoke-direct {v0, p3}, Lorg/apache/jackrabbit/webdav/header/OverwriteHeader;-><init>(Z)V

    invoke-virtual {p0, v0}, Lorg/apache/jackrabbit/webdav/client/methods/MoveMethod;->setRequestHeader(Lorg/apache/jackrabbit/webdav/header/Header;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "MOVE"

    return-object v0
.end method

.method protected isSuccess(I)Z
    .locals 1
    .param p1, "statusCode"    # I

    .prologue
    .line 57
    const/16 v0, 0xc9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xcc

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
