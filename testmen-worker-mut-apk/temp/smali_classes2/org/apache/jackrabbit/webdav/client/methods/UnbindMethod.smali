.class public Lorg/apache/jackrabbit/webdav/client/methods/UnbindMethod;
.super Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;
.source "UnbindMethod.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/bind/UnbindInfo;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "info"    # Lorg/apache/jackrabbit/webdav/bind/UnbindInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0, p2}, Lorg/apache/jackrabbit/webdav/client/methods/UnbindMethod;->setRequestBody(Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "UNBIND"

    return-object v0
.end method

.method protected isSuccess(I)Z
    .locals 1
    .param p1, "statusCode"    # I

    .prologue
    .line 51
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
