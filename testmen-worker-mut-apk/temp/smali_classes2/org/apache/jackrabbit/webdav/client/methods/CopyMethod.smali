.class public Lorg/apache/jackrabbit/webdav/client/methods/CopyMethod;
.super Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;
.source "CopyMethod.java"


# static fields
.field private static log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/apache/jackrabbit/webdav/client/methods/CopyMethod;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/client/methods/CopyMethod;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "destinationUri"    # Ljava/lang/String;
    .param p3, "overwrite"    # Z

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/jackrabbit/webdav/client/methods/CopyMethod;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "destinationUri"    # Ljava/lang/String;
    .param p3, "overwrite"    # Z
    .param p4, "shallow"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;-><init>(Ljava/lang/String;)V

    .line 53
    const-string v0, "Destination"

    invoke-virtual {p0, v0, p2}, Lorg/apache/jackrabbit/webdav/client/methods/CopyMethod;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v0, Lorg/apache/jackrabbit/webdav/header/OverwriteHeader;

    invoke-direct {v0, p3}, Lorg/apache/jackrabbit/webdav/header/OverwriteHeader;-><init>(Z)V

    invoke-virtual {p0, v0}, Lorg/apache/jackrabbit/webdav/client/methods/CopyMethod;->setRequestHeader(Lorg/apache/jackrabbit/webdav/header/Header;)V

    .line 55
    if-eqz p4, :cond_0

    .line 56
    new-instance v0, Lorg/apache/jackrabbit/webdav/header/DepthHeader;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/jackrabbit/webdav/header/DepthHeader;-><init>(Z)V

    invoke-virtual {p0, v0}, Lorg/apache/jackrabbit/webdav/client/methods/CopyMethod;->setRequestHeader(Lorg/apache/jackrabbit/webdav/header/Header;)V

    .line 58
    :cond_0
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "COPY"

    return-object v0
.end method

.method protected isSuccess(I)Z
    .locals 1
    .param p1, "statusCode"    # I

    .prologue
    .line 78
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
