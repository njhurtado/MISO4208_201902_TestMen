.class public Lorg/apache/jackrabbit/webdav/client/methods/OrderPatchMethod;
.super Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;
.source "OrderPatchMethod.java"


# static fields
.field private static log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/apache/jackrabbit/webdav/client/methods/OrderPatchMethod;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/client/methods/OrderPatchMethod;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "orderingType"    # Ljava/lang/String;
    .param p3, "memberSegment"    # Ljava/lang/String;
    .param p4, "targetMemberSegment"    # Ljava/lang/String;
    .param p5, "before"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;-><init>(Ljava/lang/String;)V

    .line 83
    if-eqz p5, :cond_0

    const-string v1, "before"

    .line 84
    .local v1, "orderPosition":Ljava/lang/String;
    :goto_0
    new-instance v2, Lorg/apache/jackrabbit/webdav/ordering/Position;

    invoke-direct {v2, v1, p4}, Lorg/apache/jackrabbit/webdav/ordering/Position;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .local v2, "p":Lorg/apache/jackrabbit/webdav/ordering/Position;
    new-instance v0, Lorg/apache/jackrabbit/webdav/ordering/OrderPatch;

    new-instance v3, Lorg/apache/jackrabbit/webdav/ordering/OrderPatch$Member;

    invoke-direct {v3, p3, v2}, Lorg/apache/jackrabbit/webdav/ordering/OrderPatch$Member;-><init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/ordering/Position;)V

    invoke-direct {v0, p2, v3}, Lorg/apache/jackrabbit/webdav/ordering/OrderPatch;-><init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/ordering/OrderPatch$Member;)V

    .line 86
    .local v0, "op":Lorg/apache/jackrabbit/webdav/ordering/OrderPatch;
    invoke-virtual {p0, v0}, Lorg/apache/jackrabbit/webdav/client/methods/OrderPatchMethod;->setRequestBody(Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;)V

    .line 87
    return-void

    .line 83
    .end local v0    # "op":Lorg/apache/jackrabbit/webdav/ordering/OrderPatch;
    .end local v1    # "orderPosition":Ljava/lang/String;
    .end local v2    # "p":Lorg/apache/jackrabbit/webdav/ordering/Position;
    :cond_0
    const-string v1, "after"

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "orderingType"    # Ljava/lang/String;
    .param p3, "memberSegment"    # Ljava/lang/String;
    .param p4, "first"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;-><init>(Ljava/lang/String;)V

    .line 62
    if-eqz p4, :cond_0

    const-string v1, "first"

    .line 63
    .local v1, "orderPosition":Ljava/lang/String;
    :goto_0
    new-instance v2, Lorg/apache/jackrabbit/webdav/ordering/Position;

    invoke-direct {v2, v1}, Lorg/apache/jackrabbit/webdav/ordering/Position;-><init>(Ljava/lang/String;)V

    .line 64
    .local v2, "p":Lorg/apache/jackrabbit/webdav/ordering/Position;
    new-instance v0, Lorg/apache/jackrabbit/webdav/ordering/OrderPatch;

    new-instance v3, Lorg/apache/jackrabbit/webdav/ordering/OrderPatch$Member;

    invoke-direct {v3, p3, v2}, Lorg/apache/jackrabbit/webdav/ordering/OrderPatch$Member;-><init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/ordering/Position;)V

    invoke-direct {v0, p2, v3}, Lorg/apache/jackrabbit/webdav/ordering/OrderPatch;-><init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/ordering/OrderPatch$Member;)V

    .line 65
    .local v0, "op":Lorg/apache/jackrabbit/webdav/ordering/OrderPatch;
    invoke-virtual {p0, v0}, Lorg/apache/jackrabbit/webdav/client/methods/OrderPatchMethod;->setRequestBody(Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;)V

    .line 66
    return-void

    .line 62
    .end local v0    # "op":Lorg/apache/jackrabbit/webdav/ordering/OrderPatch;
    .end local v1    # "orderPosition":Ljava/lang/String;
    .end local v2    # "p":Lorg/apache/jackrabbit/webdav/ordering/Position;
    :cond_0
    const-string v1, "last"

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/ordering/OrderPatch;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "orderPatch"    # Lorg/apache/jackrabbit/webdav/ordering/OrderPatch;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0, p2}, Lorg/apache/jackrabbit/webdav/client/methods/OrderPatchMethod;->setRequestBody(Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    const-string v0, "ORDERPATCH"

    return-object v0
.end method

.method protected isSuccess(I)Z
    .locals 1
    .param p1, "statusCode"    # I

    .prologue
    .line 106
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
