.class public Lorg/apache/jackrabbit/webdav/observation/EventDiscovery;
.super Ljava/lang/Object;
.source "EventDiscovery.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/observation/ObservationConstants;
.implements Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;


# static fields
.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private final bundles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/jackrabbit/webdav/observation/EventBundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/apache/jackrabbit/webdav/observation/EventDiscovery;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/observation/EventDiscovery;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/observation/EventDiscovery;->bundles:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addEventBundle(Lorg/apache/jackrabbit/webdav/observation/EventBundle;)V
    .locals 1
    .param p1, "eventBundle"    # Lorg/apache/jackrabbit/webdav/observation/EventBundle;

    .prologue
    .line 51
    if-eqz p1, :cond_0

    .line 52
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/observation/EventDiscovery;->bundles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_0
    return-void
.end method

.method public getEventBundles()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/jackrabbit/webdav/observation/EventBundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/observation/EventDiscovery;->bundles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/observation/EventDiscovery;->bundles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 5
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 86
    const-string v3, "eventdiscovery"

    sget-object v4, Lorg/apache/jackrabbit/webdav/observation/EventDiscovery;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v3, v4}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 87
    .local v1, "ed":Lorg/w3c/dom/Element;
    iget-object v3, p0, Lorg/apache/jackrabbit/webdav/observation/EventDiscovery;->bundles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/jackrabbit/webdav/observation/EventBundle;

    .line 88
    .local v0, "bundle":Lorg/apache/jackrabbit/webdav/observation/EventBundle;
    invoke-interface {v0, p1}, Lorg/apache/jackrabbit/webdav/observation/EventBundle;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 90
    .end local v0    # "bundle":Lorg/apache/jackrabbit/webdav/observation/EventBundle;
    :cond_0
    return-object v1
.end method
