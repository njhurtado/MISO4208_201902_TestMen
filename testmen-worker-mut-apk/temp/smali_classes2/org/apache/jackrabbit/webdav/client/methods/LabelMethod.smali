.class public Lorg/apache/jackrabbit/webdav/client/methods/LabelMethod;
.super Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;
.source "LabelMethod.java"


# static fields
.field private static log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/apache/jackrabbit/webdav/client/methods/LabelMethod;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/client/methods/LabelMethod;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lorg/apache/jackrabbit/webdav/version/LabelInfo;

    invoke-direct {v0, p2, p3}, Lorg/apache/jackrabbit/webdav/version/LabelInfo;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0}, Lorg/apache/jackrabbit/webdav/client/methods/LabelMethod;-><init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/version/LabelInfo;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "depth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lorg/apache/jackrabbit/webdav/version/LabelInfo;

    invoke-direct {v0, p2, p3, p4}, Lorg/apache/jackrabbit/webdav/version/LabelInfo;-><init>(Ljava/lang/String;II)V

    invoke-direct {p0, p1, v0}, Lorg/apache/jackrabbit/webdav/client/methods/LabelMethod;-><init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/version/LabelInfo;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/version/LabelInfo;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "labelInfo"    # Lorg/apache/jackrabbit/webdav/version/LabelInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;-><init>(Ljava/lang/String;)V

    .line 67
    new-instance v0, Lorg/apache/jackrabbit/webdav/header/DepthHeader;

    invoke-virtual {p2}, Lorg/apache/jackrabbit/webdav/version/LabelInfo;->getDepth()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/jackrabbit/webdav/header/DepthHeader;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/apache/jackrabbit/webdav/client/methods/LabelMethod;->setRequestHeader(Lorg/apache/jackrabbit/webdav/header/Header;)V

    .line 68
    invoke-virtual {p0, p2}, Lorg/apache/jackrabbit/webdav/client/methods/LabelMethod;->setRequestBody(Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;)V

    .line 69
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string v0, "LABEL"

    return-object v0
.end method

.method protected isSuccess(I)Z
    .locals 1
    .param p1, "statusCode"    # I

    .prologue
    .line 88
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
