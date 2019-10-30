.class public Lorg/apache/jackrabbit/webdav/client/methods/AclMethod;
.super Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;
.source "AclMethod.java"


# static fields
.field private static log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/apache/jackrabbit/webdav/client/methods/AclMethod;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/client/methods/AclMethod;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/security/AclProperty;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "aclProperty"    # Lorg/apache/jackrabbit/webdav/security/AclProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, p2}, Lorg/apache/jackrabbit/webdav/client/methods/AclMethod;->setRequestBody(Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "ACL"

    return-object v0
.end method

.method protected isSuccess(I)Z
    .locals 1
    .param p1, "statusCode"    # I

    .prologue
    .line 56
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
