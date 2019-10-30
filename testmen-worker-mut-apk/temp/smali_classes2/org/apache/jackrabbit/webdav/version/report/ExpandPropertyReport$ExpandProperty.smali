.class Lorg/apache/jackrabbit/webdav/version/report/ExpandPropertyReport$ExpandProperty;
.super Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;
.source "ExpandPropertyReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/jackrabbit/webdav/version/report/ExpandPropertyReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty",
        "<",
        "Ljava/util/List",
        "<",
        "Lorg/apache/jackrabbit/webdav/MultiStatusResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/jackrabbit/webdav/version/report/ExpandPropertyReport;

.field private valueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/jackrabbit/webdav/MultiStatusResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/apache/jackrabbit/webdav/version/report/ExpandPropertyReport;Lorg/apache/jackrabbit/webdav/version/DeltaVResource;Lorg/apache/jackrabbit/webdav/property/HrefProperty;Lorg/apache/jackrabbit/webdav/xml/ElementIterator;)V
    .locals 9
    .param p2, "deltaVResource"    # Lorg/apache/jackrabbit/webdav/version/DeltaVResource;
    .param p3, "hrefProperty"    # Lorg/apache/jackrabbit/webdav/property/HrefProperty;
    .param p4, "elementIter"    # Lorg/apache/jackrabbit/webdav/xml/ElementIterator;

    .prologue
    .line 243
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/version/report/ExpandPropertyReport$ExpandProperty;->this$0:Lorg/apache/jackrabbit/webdav/version/report/ExpandPropertyReport;

    .line 244
    invoke-virtual {p3}, Lorg/apache/jackrabbit/webdav/property/HrefProperty;->getName()Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v7

    invoke-virtual {p3}, Lorg/apache/jackrabbit/webdav/property/HrefProperty;->isInvisibleInAllprop()Z

    move-result v8

    invoke-direct {p0, v7, v8}, Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;-><init>(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;Z)V

    .line 235
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lorg/apache/jackrabbit/webdav/version/report/ExpandPropertyReport$ExpandProperty;->valueList:Ljava/util/List;

    .line 246
    :try_start_0
    invoke-virtual {p3}, Lorg/apache/jackrabbit/webdav/property/HrefProperty;->getName()Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v7

    invoke-interface {p2, v7}, Lorg/apache/jackrabbit/webdav/version/DeltaVResource;->getReferenceResources(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)[Lorg/apache/jackrabbit/webdav/DavResource;

    move-result-object v4

    .line 247
    .local v4, "refResource":[Lorg/apache/jackrabbit/webdav/DavResource;
    move-object v0, v4

    .local v0, "arr$":[Lorg/apache/jackrabbit/webdav/DavResource;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 248
    .local v5, "res":Lorg/apache/jackrabbit/webdav/DavResource;
    invoke-static {p1, v5, p4}, Lorg/apache/jackrabbit/webdav/version/report/ExpandPropertyReport;->access$100(Lorg/apache/jackrabbit/webdav/version/report/ExpandPropertyReport;Lorg/apache/jackrabbit/webdav/DavResource;Ljava/util/Iterator;)Lorg/apache/jackrabbit/webdav/MultiStatusResponse;

    move-result-object v6

    .line 249
    .local v6, "resp":Lorg/apache/jackrabbit/webdav/MultiStatusResponse;
    iget-object v7, p0, Lorg/apache/jackrabbit/webdav/version/report/ExpandPropertyReport$ExpandProperty;->valueList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/jackrabbit/webdav/DavException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 251
    .end local v0    # "arr$":[Lorg/apache/jackrabbit/webdav/DavResource;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "refResource":[Lorg/apache/jackrabbit/webdav/DavResource;
    .end local v5    # "res":Lorg/apache/jackrabbit/webdav/DavResource;
    .end local v6    # "resp":Lorg/apache/jackrabbit/webdav/MultiStatusResponse;
    :catch_0
    move-exception v1

    .line 253
    .local v1, "e":Lorg/apache/jackrabbit/webdav/DavException;
    invoke-static {}, Lorg/apache/jackrabbit/webdav/version/report/ExpandPropertyReport;->access$200()Lorg/slf4j/Logger;

    move-result-object v7

    invoke-virtual {v1}, Lorg/apache/jackrabbit/webdav/DavException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 255
    .end local v1    # "e":Lorg/apache/jackrabbit/webdav/DavException;
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/jackrabbit/webdav/version/report/ExpandPropertyReport;Lorg/apache/jackrabbit/webdav/version/DeltaVResource;Lorg/apache/jackrabbit/webdav/property/HrefProperty;Lorg/apache/jackrabbit/webdav/xml/ElementIterator;Lorg/apache/jackrabbit/webdav/version/report/ExpandPropertyReport$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/jackrabbit/webdav/version/report/ExpandPropertyReport;
    .param p2, "x1"    # Lorg/apache/jackrabbit/webdav/version/DeltaVResource;
    .param p3, "x2"    # Lorg/apache/jackrabbit/webdav/property/HrefProperty;
    .param p4, "x3"    # Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    .param p5, "x4"    # Lorg/apache/jackrabbit/webdav/version/report/ExpandPropertyReport$1;

    .prologue
    .line 233
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/jackrabbit/webdav/version/report/ExpandPropertyReport$ExpandProperty;-><init>(Lorg/apache/jackrabbit/webdav/version/report/ExpandPropertyReport;Lorg/apache/jackrabbit/webdav/version/DeltaVResource;Lorg/apache/jackrabbit/webdav/property/HrefProperty;Lorg/apache/jackrabbit/webdav/xml/ElementIterator;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 233
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/version/report/ExpandPropertyReport$ExpandProperty;->getValue()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/jackrabbit/webdav/MultiStatusResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/version/report/ExpandPropertyReport$ExpandProperty;->valueList:Ljava/util/List;

    return-object v0
.end method
