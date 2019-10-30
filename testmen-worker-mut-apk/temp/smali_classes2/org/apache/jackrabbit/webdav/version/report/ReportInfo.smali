.class public Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;
.super Ljava/lang/Object;
.source "ReportInfo.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;


# static fields
.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private final content:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/w3c/dom/Element;",
            ">;"
        }
    .end annotation
.end field

.field private final depth:I

.field private final propertyNames:Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

.field private final typeLocalName:Ljava/lang/String;

.field private final typeNamespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)V
    .locals 2
    .param p1, "typeLocalName"    # Ljava/lang/String;
    .param p2, "typeNamespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .prologue
    .line 89
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;-><init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;ILorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;ILorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;)V
    .locals 1
    .param p1, "typelocalName"    # Ljava/lang/String;
    .param p2, "typeNamespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;
    .param p3, "depth"    # I
    .param p4, "propertyNames"    # Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->content:Ljava/util/List;

    .line 101
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->typeLocalName:Ljava/lang/String;

    .line 102
    iput-object p2, p0, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->typeNamespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .line 103
    iput p3, p0, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->depth:I

    .line 104
    if-eqz p4, :cond_0

    .line 105
    new-instance v0, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    invoke-direct {v0, p4}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;-><init>(Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;)V

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->propertyNames:Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    new-instance v0, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    invoke-direct {v0}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;-><init>()V

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->propertyNames:Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/jackrabbit/webdav/version/report/ReportType;)V
    .locals 2
    .param p1, "type"    # Lorg/apache/jackrabbit/webdav/version/report/ReportType;

    .prologue
    .line 58
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;-><init>(Lorg/apache/jackrabbit/webdav/version/report/ReportType;ILorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/apache/jackrabbit/webdav/version/report/ReportType;I)V
    .locals 1
    .param p1, "type"    # Lorg/apache/jackrabbit/webdav/version/report/ReportType;
    .param p2, "depth"    # I

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;-><init>(Lorg/apache/jackrabbit/webdav/version/report/ReportType;ILorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/apache/jackrabbit/webdav/version/report/ReportType;ILorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;)V
    .locals 2
    .param p1, "type"    # Lorg/apache/jackrabbit/webdav/version/report/ReportType;
    .param p2, "depth"    # I
    .param p3, "propertyNames"    # Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    .prologue
    .line 79
    invoke-virtual {p1}, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->getNamespace()Lorg/apache/jackrabbit/webdav/xml/Namespace;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;-><init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;ILorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;I)V
    .locals 5
    .param p1, "reportElement"    # Lorg/w3c/dom/Element;
    .param p2, "depth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->content:Ljava/util/List;

    .line 119
    if-nez p1, :cond_0

    .line 120
    sget-object v3, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->log:Lorg/slf4j/Logger;

    const-string v4, "Report request body must not be null."

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 121
    new-instance v3, Lorg/apache/jackrabbit/webdav/DavException;

    const/16 v4, 0x190

    invoke-direct {v3, v4}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(I)V

    throw v3

    .line 124
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->typeLocalName:Ljava/lang/String;

    .line 125
    invoke-static {p1}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getNamespace(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/xml/Namespace;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->typeNamespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .line 126
    iput p2, p0, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->depth:I

    .line 127
    const-string v3, "prop"

    sget-object v4, Lorg/apache/jackrabbit/webdav/DavConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v3, v4}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 128
    .local v2, "propElement":Lorg/w3c/dom/Element;
    if-eqz v2, :cond_2

    .line 129
    new-instance v3, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    invoke-direct {v3, v2}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;-><init>(Lorg/w3c/dom/Element;)V

    iput-object v3, p0, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->propertyNames:Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    .line 130
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 135
    :goto_0
    invoke-static {p1}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildren(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/xml/ElementIterator;

    move-result-object v1

    .line 136
    .local v1, "it":Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    :cond_1
    :goto_1
    invoke-virtual {v1}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 137
    invoke-virtual {v1}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->nextElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 138
    .local v0, "el":Lorg/w3c/dom/Element;
    const-string v3, "prop"

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 139
    iget-object v3, p0, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->content:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 132
    .end local v0    # "el":Lorg/w3c/dom/Element;
    .end local v1    # "it":Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    :cond_2
    new-instance v3, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    invoke-direct {v3}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;-><init>()V

    iput-object v3, p0, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->propertyNames:Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    goto :goto_0

    .line 142
    .restart local v1    # "it":Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    :cond_3
    return-void
.end method


# virtual methods
.method public containsContentElement(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z
    .locals 6
    .param p1, "localName"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 173
    iget-object v5, p0, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->content:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v3

    .line 176
    :cond_1
    iget-object v5, p0, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->content:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 177
    .local v0, "elem":Lorg/w3c/dom/Element;
    if-nez p2, :cond_4

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    move v2, v4

    .line 178
    .local v2, "sameNamespace":Z
    :goto_1
    if-eqz v2, :cond_2

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    .line 179
    goto :goto_0

    .end local v2    # "sameNamespace":Z
    :cond_3
    move v2, v3

    .line 177
    goto :goto_1

    :cond_4
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->isSame(Ljava/lang/String;)Z

    move-result v2

    goto :goto_1
.end method

.method public getContentElement(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;
    .locals 2
    .param p1, "localName"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .prologue
    .line 195
    invoke-virtual {p0, p1, p2}, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->getContentElements(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Ljava/util/List;

    move-result-object v0

    .line 196
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Element;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    const/4 v1, 0x0

    .line 199
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    goto :goto_0
.end method

.method public getContentElements(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Ljava/util/List;
    .locals 4
    .param p1, "localName"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/jackrabbit/webdav/xml/Namespace;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/w3c/dom/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v2, "l":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Element;>;"
    iget-object v3, p0, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->content:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 216
    .local v0, "elem":Lorg/w3c/dom/Element;
    invoke-static {v0, p1, p2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->matches(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 217
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 220
    .end local v0    # "elem":Lorg/w3c/dom/Element;
    :cond_1
    return-object v2
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->depth:I

    return v0
.end method

.method public getPropertyNameSet()Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->propertyNames:Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    return-object v0
.end method

.method public getReportName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->typeLocalName:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->typeNamespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getExpandedName(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setContentElement(Lorg/w3c/dom/Element;)V
    .locals 1
    .param p1, "contentElement"    # Lorg/w3c/dom/Element;

    .prologue
    .line 229
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->content:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    return-void
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 6
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 250
    iget-object v4, p0, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->typeLocalName:Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->typeNamespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v4, v5}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 251
    .local v3, "reportElement":Lorg/w3c/dom/Element;
    iget-object v4, p0, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->content:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 252
    iget-object v4, p0, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->content:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 253
    .local v0, "contentEntry":Lorg/w3c/dom/Element;
    const/4 v4, 0x1

    invoke-interface {p1, v0, v4}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 254
    .local v2, "n":Lorg/w3c/dom/Node;
    invoke-interface {v3, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 257
    .end local v0    # "contentEntry":Lorg/w3c/dom/Element;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "n":Lorg/w3c/dom/Node;
    :cond_0
    iget-object v4, p0, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->propertyNames:Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    invoke-virtual {v4}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 258
    iget-object v4, p0, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->propertyNames:Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    invoke-virtual {v4, p1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 260
    :cond_1
    return-object v3
.end method
