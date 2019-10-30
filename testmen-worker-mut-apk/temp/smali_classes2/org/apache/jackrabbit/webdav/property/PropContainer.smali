.class public abstract Lorg/apache/jackrabbit/webdav/property/PropContainer;
.super Ljava/lang/Object;
.source "PropContainer.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;
.implements Lorg/apache/jackrabbit/webdav/DavConstants;


# static fields
.field private static log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/apache/jackrabbit/webdav/property/PropContainer;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/property/PropContainer;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addContent(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "contentEntry"    # Ljava/lang/Object;

    .prologue
    .line 46
    instance-of v0, p1, Lorg/apache/jackrabbit/webdav/property/PropEntry;

    if-eqz v0, :cond_0

    .line 47
    check-cast p1, Lorg/apache/jackrabbit/webdav/property/PropEntry;

    .end local p1    # "contentEntry":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/jackrabbit/webdav/property/PropContainer;->addContent(Lorg/apache/jackrabbit/webdav/property/PropEntry;)Z

    move-result v0

    .line 49
    :goto_0
    return v0

    .restart local p1    # "contentEntry":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract addContent(Lorg/apache/jackrabbit/webdav/property/PropEntry;)Z
.end method

.method public abstract contains(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Z
.end method

.method public abstract getContent()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/jackrabbit/webdav/property/PropEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getContentSize()I
.end method

.method public abstract isEmpty()Z
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 5
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 108
    const-string v3, "prop"

    sget-object v4, Lorg/apache/jackrabbit/webdav/property/PropContainer;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v3, v4}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 109
    .local v2, "prop":Lorg/w3c/dom/Element;
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/property/PropContainer;->getContent()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 110
    .local v0, "content":Ljava/lang/Object;
    instance-of v3, v0, Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;

    if-eqz v3, :cond_0

    .line 111
    check-cast v0, Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;

    .end local v0    # "content":Ljava/lang/Object;
    invoke-interface {v0, p1}, Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 113
    .restart local v0    # "content":Ljava/lang/Object;
    :cond_0
    sget-object v3, Lorg/apache/jackrabbit/webdav/property/PropContainer;->log:Lorg/slf4j/Logger;

    const-string v4, "Unexpected content in PropContainer: should be XmlSerializable."

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    .end local v0    # "content":Ljava/lang/Object;
    :cond_1
    return-object v2
.end method
