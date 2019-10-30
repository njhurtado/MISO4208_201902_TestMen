.class public abstract Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;
.super Ljava/lang/Object;
.source "AbstractDavProperty.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/property/DavProperty;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/jackrabbit/webdav/property/DavProperty",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private final isInvisibleInAllprop:Z

.field private final name:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;Z)V
    .locals 0
    .param p1, "name"    # Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    .param p2, "isInvisibleInAllprop"    # Z

    .prologue
    .line 46
    .local p0, "this":Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;, "Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;->name:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 48
    iput-boolean p2, p0, Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;->isInvisibleInAllprop:Z

    .line 49
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;, "Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty<TT;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 75
    instance-of v5, p1, Lorg/apache/jackrabbit/webdav/property/DavProperty;

    if-eqz v5, :cond_3

    move-object v2, p1

    .line 76
    check-cast v2, Lorg/apache/jackrabbit/webdav/property/DavProperty;

    .line 77
    .local v2, "prop":Lorg/apache/jackrabbit/webdav/property/DavProperty;, "Lorg/apache/jackrabbit/webdav/property/DavProperty<*>;"
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;->getName()Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v5

    invoke-interface {v2}, Lorg/apache/jackrabbit/webdav/property/DavProperty;->getName()Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 78
    .local v0, "equalName":Z
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-interface {v2}, Lorg/apache/jackrabbit/webdav/property/DavProperty;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    move v1, v3

    .line 79
    .local v1, "equalValue":Z
    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 81
    .end local v0    # "equalName":Z
    .end local v1    # "equalValue":Z
    .end local v2    # "prop":Lorg/apache/jackrabbit/webdav/property/DavProperty;, "Lorg/apache/jackrabbit/webdav/property/DavProperty<*>;"
    :goto_1
    return v3

    .restart local v0    # "equalName":Z
    .restart local v2    # "prop":Lorg/apache/jackrabbit/webdav/property/DavProperty;, "Lorg/apache/jackrabbit/webdav/property/DavProperty<*>;"
    :cond_0
    move v1, v4

    .line 78
    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2}, Lorg/apache/jackrabbit/webdav/property/DavProperty;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .restart local v1    # "equalValue":Z
    :cond_2
    move v3, v4

    .line 79
    goto :goto_1

    .end local v0    # "equalName":Z
    .end local v1    # "equalValue":Z
    .end local v2    # "prop":Lorg/apache/jackrabbit/webdav/property/DavProperty;, "Lorg/apache/jackrabbit/webdav/property/DavProperty<*>;"
    :cond_3
    move v3, v4

    .line 81
    goto :goto_1
.end method

.method public getName()Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    .locals 1

    .prologue
    .line 150
    .local p0, "this":Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;, "Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty<TT;>;"
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;->name:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 58
    .local p0, "this":Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;, "Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty<TT;>;"
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;->getName()Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->hashCode()I

    move-result v0

    .line 59
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 62
    :cond_0
    const v1, 0x7fffffff

    rem-int v1, v0, v1

    return v1
.end method

.method public isInvisibleInAllprop()Z
    .locals 1

    .prologue
    .line 161
    .local p0, "this":Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;, "Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty<TT;>;"
    iget-boolean v0, p0, Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;->isInvisibleInAllprop:Z

    return v0
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 8
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .local p0, "this":Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;, "Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty<TT;>;"
    const/4 v7, 0x1

    .line 111
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;->getName()Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v6

    invoke-virtual {v6, p1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 112
    .local v0, "elem":Lorg/w3c/dom/Element;
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 114
    .local v5, "value":Ljava/lang/Object;, "TT;"
    if-eqz v5, :cond_0

    .line 115
    instance-of v6, v5, Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;

    if-eqz v6, :cond_1

    .line 116
    check-cast v5, Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;

    .end local v5    # "value":Ljava/lang/Object;, "TT;"
    invoke-interface {v5, p1}, Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 140
    :cond_0
    :goto_0
    return-object v0

    .line 117
    .restart local v5    # "value":Ljava/lang/Object;, "TT;"
    :cond_1
    instance-of v6, v5, Lorg/w3c/dom/Node;

    if-eqz v6, :cond_2

    .line 118
    check-cast v5, Lorg/w3c/dom/Node;

    .end local v5    # "value":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v5, v7}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 119
    .local v4, "n":Lorg/w3c/dom/Node;
    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 120
    .end local v4    # "n":Lorg/w3c/dom/Node;
    .restart local v5    # "value":Ljava/lang/Object;, "TT;"
    :cond_2
    instance-of v6, v5, [Lorg/w3c/dom/Node;

    if-eqz v6, :cond_3

    .line 121
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    move-object v6, v5

    check-cast v6, [Lorg/w3c/dom/Node;

    check-cast v6, [Lorg/w3c/dom/Node;

    array-length v6, v6

    if-ge v2, v6, :cond_0

    move-object v6, v5

    .line 122
    check-cast v6, [Lorg/w3c/dom/Node;

    check-cast v6, [Lorg/w3c/dom/Node;

    aget-object v6, v6, v2

    invoke-interface {p1, v6, v7}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 123
    .restart local v4    # "n":Lorg/w3c/dom/Node;
    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 121
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 125
    .end local v2    # "i":I
    .end local v4    # "n":Lorg/w3c/dom/Node;
    :cond_3
    instance-of v6, v5, Ljava/util/Collection;

    if-eqz v6, :cond_6

    .line 126
    check-cast v5, Ljava/util/Collection;

    .end local v5    # "value":Ljava/lang/Object;, "TT;"
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 127
    .local v1, "entry":Ljava/lang/Object;
    instance-of v6, v1, Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;

    if-eqz v6, :cond_4

    .line 128
    check-cast v1, Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;

    .end local v1    # "entry":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_2

    .line 129
    .restart local v1    # "entry":Ljava/lang/Object;
    :cond_4
    instance-of v6, v1, Lorg/w3c/dom/Node;

    if-eqz v6, :cond_5

    .line 130
    check-cast v1, Lorg/w3c/dom/Node;

    .end local v1    # "entry":Ljava/lang/Object;
    invoke-interface {p1, v1, v7}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 131
    .restart local v4    # "n":Lorg/w3c/dom/Node;
    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_2

    .line 133
    .end local v4    # "n":Lorg/w3c/dom/Node;
    .restart local v1    # "entry":Ljava/lang/Object;
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->setText(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    goto :goto_2

    .line 137
    .end local v1    # "entry":Ljava/lang/Object;
    .end local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "value":Ljava/lang/Object;, "TT;"
    :cond_6
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->setText(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    goto :goto_0
.end method
