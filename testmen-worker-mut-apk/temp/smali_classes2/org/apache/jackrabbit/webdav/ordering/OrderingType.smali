.class public Lorg/apache/jackrabbit/webdav/ordering/OrderingType;
.super Lorg/apache/jackrabbit/webdav/property/HrefProperty;
.source "OrderingType.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/ordering/OrderingConstants;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/jackrabbit/webdav/ordering/OrderingType;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "href"    # Ljava/lang/String;

    .prologue
    .line 50
    sget-object v0, Lorg/apache/jackrabbit/webdav/ordering/OrderingType;->ORDERING_TYPE:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    if-eqz p1, :cond_0

    .end local p1    # "href":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/jackrabbit/webdav/property/HrefProperty;-><init>(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;Ljava/lang/String;Z)V

    .line 51
    return-void

    .line 50
    .restart local p1    # "href":Ljava/lang/String;
    :cond_0
    const-string p1, "DAV:unordered"

    goto :goto_0
.end method
