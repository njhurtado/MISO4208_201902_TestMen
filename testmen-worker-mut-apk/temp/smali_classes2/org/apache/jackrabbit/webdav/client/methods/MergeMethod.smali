.class public Lorg/apache/jackrabbit/webdav/client/methods/MergeMethod;
.super Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;
.source "MergeMethod.java"


# static fields
.field private static log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/apache/jackrabbit/webdav/client/methods/MergeMethod;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/client/methods/MergeMethod;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/version/MergeInfo;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "mergeInfo"    # Lorg/apache/jackrabbit/webdav/version/MergeInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, p2}, Lorg/apache/jackrabbit/webdav/client/methods/MergeMethod;->setRequestBody(Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "MERGE"

    return-object v0
.end method

.method protected isSuccess(I)Z
    .locals 1
    .param p1, "statusCode"    # I

    .prologue
    .line 57
    const/16 v0, 0xcf

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
