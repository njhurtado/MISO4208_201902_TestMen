.class public Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty;
.super Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;
.source "DefaultDavProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/jackrabbit/webdav/xml/Namespace;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "namespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Lorg/apache/jackrabbit/webdav/xml/Namespace;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty;, "Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty;-><init>(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/jackrabbit/webdav/xml/Namespace;Z)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/jackrabbit/webdav/xml/Namespace;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "namespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;
    .param p4, "isInvisibleInAllprop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Lorg/apache/jackrabbit/webdav/xml/Namespace;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty;, "Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p1, p3}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;-><init>(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;Z)V

    .line 54
    iput-object p2, p0, Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty;->value:Ljava/lang/Object;

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/jackrabbit/webdav/property/DavPropertyName;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty;, "Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty;-><init>(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;Ljava/lang/Object;Z)V

    .line 94
    return-void
.end method

.method public constructor <init>(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "name"    # Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    .param p3, "isInvisibleInAllprop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/jackrabbit/webdav/property/DavPropertyName;",
            "TT;Z)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty;, "Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1, p3}, Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;-><init>(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;Z)V

    .line 82
    iput-object p2, p0, Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty;->value:Ljava/lang/Object;

    .line 83
    return-void
.end method

.method public static createFromXml(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty;
    .locals 7
    .param p0, "propertyElement"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            ")",
            "Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 121
    if-nez p0, :cond_0

    .line 122
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Cannot create a new DavProperty from a \'null\' element."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 124
    :cond_0
    invoke-static {p0}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->createFromXml(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v2

    .line 127
    .local v2, "name":Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    invoke-static {p0}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->hasContent(Lorg/w3c/dom/Node;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 128
    new-instance v3, Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4, v6}, Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty;-><init>(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;Ljava/lang/Object;Z)V

    .line 142
    .local v3, "prop":Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty;, "Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty<*>;"
    :goto_0
    return-object v3

    .line 130
    .end local v3    # "prop":Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty;, "Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty<*>;"
    :cond_1
    invoke-static {p0}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getContent(Lorg/w3c/dom/Node;)Ljava/util/List;

    move-result-object v0

    .line 131
    .local v0, "c":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 132
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    .line 133
    .local v1, "n":Lorg/w3c/dom/Node;
    instance-of v4, v1, Lorg/w3c/dom/Element;

    if-eqz v4, :cond_2

    .line 134
    new-instance v3, Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty;

    check-cast v1, Lorg/w3c/dom/Element;

    .end local v1    # "n":Lorg/w3c/dom/Node;
    invoke-direct {v3, v2, v1, v6}, Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty;-><init>(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;Ljava/lang/Object;Z)V

    .restart local v3    # "prop":Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty;, "Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty<*>;"
    goto :goto_0

    .line 136
    .end local v3    # "prop":Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty;, "Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty<*>;"
    .restart local v1    # "n":Lorg/w3c/dom/Node;
    :cond_2
    new-instance v3, Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4, v6}, Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty;-><init>(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;Ljava/lang/Object;Z)V

    .restart local v3    # "prop":Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty;, "Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty<*>;"
    goto :goto_0

    .line 139
    .end local v1    # "n":Lorg/w3c/dom/Node;
    .end local v3    # "prop":Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty;, "Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty<*>;"
    :cond_3
    new-instance v3, Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty;

    invoke-direct {v3, v2, v0, v6}, Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty;-><init>(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;Ljava/lang/Object;Z)V

    .restart local v3    # "prop":Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty;, "Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty<*>;"
    goto :goto_0
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty;, "Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty<TT;>;"
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty;->value:Ljava/lang/Object;

    return-object v0
.end method
