.class public Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;
.super Ljava/lang/Object;
.source "SupportedPrivilege.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;


# static fields
.field private static final XML_ABSTRACT:Ljava/lang/String; = "abstract"

.field private static final XML_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final XML_SUPPORTED_PRIVILEGE:Ljava/lang/String; = "supported-privilege"


# instance fields
.field private final description:Ljava/lang/String;

.field private final descriptionLanguage:Ljava/lang/String;

.field private final isAbstract:Z

.field private final privilege:Lorg/apache/jackrabbit/webdav/security/Privilege;

.field private final supportedPrivileges:[Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;


# direct methods
.method public constructor <init>(Lorg/apache/jackrabbit/webdav/security/Privilege;Ljava/lang/String;Ljava/lang/String;Z[Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;)V
    .locals 2
    .param p1, "privilege"    # Lorg/apache/jackrabbit/webdav/security/Privilege;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "descriptionLanguage"    # Ljava/lang/String;
    .param p4, "isAbstract"    # Z
    .param p5, "supportedPrivileges"    # [Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    if-nez p1, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DAV:supported-privilege element must contain a single privilege."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;->privilege:Lorg/apache/jackrabbit/webdav/security/Privilege;

    .line 61
    iput-object p2, p0, Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;->description:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;->descriptionLanguage:Ljava/lang/String;

    .line 63
    iput-boolean p4, p0, Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;->isAbstract:Z

    .line 64
    iput-object p5, p0, Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;->supportedPrivileges:[Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;

    .line 65
    return-void
.end method

.method static getSupportedPrivilege(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;
    .locals 10
    .param p0, "supportedPrivilege"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 110
    const-string v0, "supported-privilege"

    sget-object v5, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p0, v0, v5}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->matches(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lorg/apache/jackrabbit/webdav/DavException;

    const/16 v5, 0x190

    const-string v9, "DAV:supported-privilege element expected."

    invoke-direct {v0, v5, v9}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    const/4 v4, 0x0

    .line 114
    .local v4, "isAbstract":Z
    const/4 v1, 0x0

    .line 115
    .local v1, "privilege":Lorg/apache/jackrabbit/webdav/security/Privilege;
    const/4 v2, 0x0

    .line 116
    .local v2, "description":Ljava/lang/String;
    const/4 v3, 0x0

    .line 117
    .local v3, "descriptionLanguage":Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v8, "sp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;>;"
    invoke-static {p0}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildren(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/xml/ElementIterator;

    move-result-object v7

    .line 120
    .local v7, "children":Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    :cond_1
    :goto_0
    invoke-virtual {v7}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 121
    invoke-virtual {v7}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->next()Lorg/w3c/dom/Element;

    move-result-object v6

    .line 122
    .local v6, "child":Lorg/w3c/dom/Element;
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "abstract"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    const/4 v4, 0x1

    goto :goto_0

    .line 124
    :cond_2
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "privilege"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 125
    invoke-static {v6}, Lorg/apache/jackrabbit/webdav/security/Privilege;->getPrivilege(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/security/Privilege;

    move-result-object v1

    goto :goto_0

    .line 126
    :cond_3
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "description"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 127
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-interface {v6, v3}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    invoke-interface {v6, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 131
    :cond_4
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "supported-privilege"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    invoke-static {v6}, Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;->getSupportedPrivilege(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    .end local v6    # "child":Lorg/w3c/dom/Element;
    :cond_5
    new-instance v0, Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;

    invoke-interface {v8, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;

    invoke-direct/range {v0 .. v5}, Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;-><init>(Lorg/apache/jackrabbit/webdav/security/Privilege;Ljava/lang/String;Ljava/lang/String;Z[Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;)V

    return-object v0
.end method


# virtual methods
.method public getPrivilege()Lorg/apache/jackrabbit/webdav/security/Privilege;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;->privilege:Lorg/apache/jackrabbit/webdav/security/Privilege;

    return-object v0
.end method

.method public getSupportedPrivileges()[Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;->supportedPrivileges:[Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;

    return-object v0
.end method

.method public isAbstract()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;->isAbstract:Z

    return v0
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 9
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 71
    const-string v6, "supported-privilege"

    sget-object v7, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v6, v7}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 72
    .local v4, "spElem":Lorg/w3c/dom/Element;
    iget-object v6, p0, Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;->privilege:Lorg/apache/jackrabbit/webdav/security/Privilege;

    invoke-virtual {v6, p1}, Lorg/apache/jackrabbit/webdav/security/Privilege;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 73
    iget-boolean v6, p0, Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;->isAbstract:Z

    if-eqz v6, :cond_0

    .line 74
    const-string v6, "abstract"

    sget-object v7, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v4, v6, v7}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    .line 76
    :cond_0
    iget-object v6, p0, Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;->description:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 77
    const-string v6, "description"

    sget-object v7, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    iget-object v8, p0, Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;->description:Ljava/lang/String;

    invoke-static {v4, v6, v7, v8}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 78
    .local v1, "desc":Lorg/w3c/dom/Element;
    iget-object v6, p0, Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;->descriptionLanguage:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 79
    const-string v6, "lang"

    sget-object v7, Lorg/apache/jackrabbit/webdav/xml/Namespace;->XML_NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    iget-object v8, p0, Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;->descriptionLanguage:Ljava/lang/String;

    invoke-static {v1, v6, v7, v8}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->setAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Ljava/lang/String;)V

    .line 82
    .end local v1    # "desc":Lorg/w3c/dom/Element;
    :cond_1
    iget-object v6, p0, Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;->supportedPrivileges:[Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;

    if-eqz v6, :cond_2

    .line 83
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;->supportedPrivileges:[Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;

    .local v0, "arr$":[Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v5, v0, v2

    .line 84
    .local v5, "supportedPrivilege":Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;
    invoke-virtual {v5, p1}, Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    .end local v0    # "arr$":[Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "supportedPrivilege":Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;
    :cond_2
    return-object v4
.end method
