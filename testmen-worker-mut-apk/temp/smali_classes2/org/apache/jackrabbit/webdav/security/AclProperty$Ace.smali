.class public Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;
.super Ljava/lang/Object;
.source "AclProperty.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;
.implements Lorg/apache/jackrabbit/webdav/security/SecurityConstants;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/jackrabbit/webdav/security/AclProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ace"
.end annotation


# static fields
.field private static final XML_ACE:Ljava/lang/String; = "ace"

.field private static final XML_DENY:Ljava/lang/String; = "deny"

.field private static final XML_GRANT:Ljava/lang/String; = "grant"

.field private static final XML_INHERITED:Ljava/lang/String; = "inherited"

.field private static final XML_INVERT:Ljava/lang/String; = "invert"

.field private static final XML_PROTECTED:Ljava/lang/String; = "protected"


# instance fields
.field private final grant:Z

.field private final inheritedHref:Ljava/lang/String;

.field private final invert:Z

.field private final isProtected:Z

.field private final principal:Lorg/apache/jackrabbit/webdav/security/Principal;

.field private final privileges:[Lorg/apache/jackrabbit/webdav/security/Privilege;


# direct methods
.method private constructor <init>(Lorg/apache/jackrabbit/webdav/security/Principal;Z[Lorg/apache/jackrabbit/webdav/security/Privilege;ZZLjava/lang/String;)V
    .locals 2
    .param p1, "principal"    # Lorg/apache/jackrabbit/webdav/security/Principal;
    .param p2, "invert"    # Z
    .param p3, "privileges"    # [Lorg/apache/jackrabbit/webdav/security/Privilege;
    .param p4, "grant"    # Z
    .param p5, "isProtected"    # Z
    .param p6, "inheritedHref"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    if-nez p1, :cond_0

    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create a new ACE with \'null\' principal."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    if-eqz p3, :cond_1

    array-length v0, p3

    if-nez v0, :cond_2

    .line 163
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create a new ACE: at least a single privilege must be specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_2
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;->principal:Lorg/apache/jackrabbit/webdav/security/Principal;

    .line 166
    iput-boolean p2, p0, Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;->invert:Z

    .line 167
    iput-object p3, p0, Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;->privileges:[Lorg/apache/jackrabbit/webdav/security/Privilege;

    .line 168
    iput-boolean p4, p0, Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;->grant:Z

    .line 169
    iput-boolean p5, p0, Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;->isProtected:Z

    .line 170
    iput-object p6, p0, Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;->inheritedHref:Ljava/lang/String;

    .line 171
    return-void
.end method

.method private constructor <init>(Lorg/apache/jackrabbit/webdav/security/Principal;Z[Lorg/apache/jackrabbit/webdav/security/Privilege;ZZLorg/apache/jackrabbit/webdav/security/AclResource;)V
    .locals 7
    .param p1, "principal"    # Lorg/apache/jackrabbit/webdav/security/Principal;
    .param p2, "invert"    # Z
    .param p3, "privileges"    # [Lorg/apache/jackrabbit/webdav/security/Privilege;
    .param p4, "grant"    # Z
    .param p5, "isProtected"    # Z
    .param p6, "inherited"    # Lorg/apache/jackrabbit/webdav/security/AclResource;

    .prologue
    .line 143
    if-eqz p6, :cond_0

    invoke-interface {p6}, Lorg/apache/jackrabbit/webdav/security/AclResource;->getHref()Ljava/lang/String;

    move-result-object v6

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;-><init>(Lorg/apache/jackrabbit/webdav/security/Principal;Z[Lorg/apache/jackrabbit/webdav/security/Privilege;ZZLjava/lang/String;)V

    .line 145
    return-void

    .line 143
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lorg/apache/jackrabbit/webdav/security/Principal;Z[Lorg/apache/jackrabbit/webdav/security/Privilege;ZZLorg/apache/jackrabbit/webdav/security/AclResource;Lorg/apache/jackrabbit/webdav/security/AclProperty$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/jackrabbit/webdav/security/Principal;
    .param p2, "x1"    # Z
    .param p3, "x2"    # [Lorg/apache/jackrabbit/webdav/security/Privilege;
    .param p4, "x3"    # Z
    .param p5, "x4"    # Z
    .param p6, "x5"    # Lorg/apache/jackrabbit/webdav/security/AclResource;
    .param p7, "x6"    # Lorg/apache/jackrabbit/webdav/security/AclProperty$1;

    .prologue
    .line 115
    invoke-direct/range {p0 .. p6}, Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;-><init>(Lorg/apache/jackrabbit/webdav/security/Principal;Z[Lorg/apache/jackrabbit/webdav/security/Privilege;ZZLorg/apache/jackrabbit/webdav/security/AclResource;)V

    return-void
.end method

.method static synthetic access$000(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;
    .locals 1
    .param p0, "x0"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-static {p0}, Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;->createFromXml(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;

    move-result-object v0

    return-object v0
.end method

.method private static createFromXml(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;
    .locals 15
    .param p0, "aceElement"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 227
    const-string v0, "invert"

    sget-object v14, Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p0, v0, v14}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->hasChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v2

    .line 229
    .local v2, "invert":Z
    if-eqz v2, :cond_0

    .line 230
    const-string v0, "invert"

    sget-object v14, Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p0, v0, v14}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v9

    .line 231
    .local v9, "invertE":Lorg/w3c/dom/Element;
    const-string v0, "principal"

    sget-object v14, Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v9, v0, v14}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v10

    .line 235
    .end local v9    # "invertE":Lorg/w3c/dom/Element;
    .local v10, "pe":Lorg/w3c/dom/Element;
    :goto_0
    invoke-static {v10}, Lorg/apache/jackrabbit/webdav/security/Principal;->createFromXml(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/security/Principal;

    move-result-object v1

    .line 237
    .local v1, "principal":Lorg/apache/jackrabbit/webdav/security/Principal;
    const-string v0, "grant"

    sget-object v14, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p0, v0, v14}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->hasChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v4

    .line 239
    .local v4, "grant":Z
    if-eqz v4, :cond_1

    .line 240
    const-string v0, "grant"

    sget-object v14, Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p0, v0, v14}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v7

    .line 244
    .local v7, "gdElem":Lorg/w3c/dom/Element;
    :goto_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v12, "privilegeList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/jackrabbit/webdav/security/Privilege;>;"
    const-string v0, "privilege"

    sget-object v14, Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v7, v0, v14}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/xml/ElementIterator;

    move-result-object v11

    .line 246
    .local v11, "privIt":Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    :goto_2
    invoke-virtual {v11}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    invoke-virtual {v11}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->nextElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/security/Privilege;->getPrivilege(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/security/Privilege;

    move-result-object v13

    .line 248
    .local v13, "pv":Lorg/apache/jackrabbit/webdav/security/Privilege;
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 233
    .end local v1    # "principal":Lorg/apache/jackrabbit/webdav/security/Principal;
    .end local v4    # "grant":Z
    .end local v7    # "gdElem":Lorg/w3c/dom/Element;
    .end local v10    # "pe":Lorg/w3c/dom/Element;
    .end local v11    # "privIt":Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    .end local v12    # "privilegeList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/jackrabbit/webdav/security/Privilege;>;"
    .end local v13    # "pv":Lorg/apache/jackrabbit/webdav/security/Privilege;
    :cond_0
    const-string v0, "principal"

    sget-object v14, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p0, v0, v14}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v10

    .restart local v10    # "pe":Lorg/w3c/dom/Element;
    goto :goto_0

    .line 242
    .restart local v1    # "principal":Lorg/apache/jackrabbit/webdav/security/Principal;
    .restart local v4    # "grant":Z
    :cond_1
    const-string v0, "deny"

    sget-object v14, Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p0, v0, v14}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v7

    .restart local v7    # "gdElem":Lorg/w3c/dom/Element;
    goto :goto_1

    .line 250
    .restart local v11    # "privIt":Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    .restart local v12    # "privilegeList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/jackrabbit/webdav/security/Privilege;>;"
    :cond_2
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/jackrabbit/webdav/security/Privilege;

    invoke-interface {v12, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/jackrabbit/webdav/security/Privilege;

    .line 252
    .local v3, "privileges":[Lorg/apache/jackrabbit/webdav/security/Privilege;
    const-string v0, "protected"

    sget-object v14, Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p0, v0, v14}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->hasChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v5

    .line 253
    .local v5, "isProtected":Z
    const/4 v6, 0x0

    .line 254
    .local v6, "inheritedHref":Ljava/lang/String;
    const-string v0, "inherited"

    sget-object v14, Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p0, v0, v14}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->hasChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 255
    const-string v0, "inherited"

    sget-object v14, Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p0, v0, v14}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v8

    .line 256
    .local v8, "inhE":Lorg/w3c/dom/Element;
    const-string v0, "href"

    sget-object v14, Lorg/apache/jackrabbit/webdav/DavConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v8, v0, v14}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildText(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Ljava/lang/String;

    move-result-object v6

    .line 259
    .end local v8    # "inhE":Lorg/w3c/dom/Element;
    :cond_3
    new-instance v0, Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;

    invoke-direct/range {v0 .. v6}, Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;-><init>(Lorg/apache/jackrabbit/webdav/security/Principal;Z[Lorg/apache/jackrabbit/webdav/security/Privilege;ZZLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getInheritedHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;->inheritedHref:Ljava/lang/String;

    return-object v0
.end method

.method public getPrincipal()Lorg/apache/jackrabbit/webdav/security/Principal;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;->principal:Lorg/apache/jackrabbit/webdav/security/Principal;

    return-object v0
.end method

.method public getPrivileges()[Lorg/apache/jackrabbit/webdav/security/Privilege;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;->privileges:[Lorg/apache/jackrabbit/webdav/security/Privilege;

    return-object v0
.end method

.method public isDeny()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;->grant:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGrant()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;->grant:Z

    return v0
.end method

.method public isInvert()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;->invert:Z

    return v0
.end method

.method public isProtected()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;->isProtected:Z

    return v0
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 10
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 205
    const-string v8, "ace"

    sget-object v9, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v8, v9}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 206
    .local v0, "ace":Lorg/w3c/dom/Element;
    iget-boolean v8, p0, Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;->invert:Z

    if-eqz v8, :cond_0

    .line 207
    const-string v8, "invert"

    sget-object v9, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v8, v9}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 208
    .local v5, "inv":Lorg/w3c/dom/Element;
    iget-object v8, p0, Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;->principal:Lorg/apache/jackrabbit/webdav/security/Principal;

    invoke-virtual {v8, p1}, Lorg/apache/jackrabbit/webdav/security/Principal;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v5, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 212
    .end local v5    # "inv":Lorg/w3c/dom/Element;
    :goto_0
    iget-boolean v8, p0, Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;->grant:Z

    if-eqz v8, :cond_1

    const-string v8, "grant"

    :goto_1
    sget-object v9, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v8, v9}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 213
    .local v2, "gd":Lorg/w3c/dom/Element;
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;->privileges:[Lorg/apache/jackrabbit/webdav/security/Privilege;

    .local v1, "arr$":[Lorg/apache/jackrabbit/webdav/security/Privilege;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2
    if-ge v3, v6, :cond_2

    aget-object v7, v1, v3

    .line 214
    .local v7, "privilege":Lorg/apache/jackrabbit/webdav/security/Privilege;
    invoke-virtual {v7, p1}, Lorg/apache/jackrabbit/webdav/security/Privilege;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v2, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 213
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 210
    .end local v1    # "arr$":[Lorg/apache/jackrabbit/webdav/security/Privilege;
    .end local v2    # "gd":Lorg/w3c/dom/Element;
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "privilege":Lorg/apache/jackrabbit/webdav/security/Privilege;
    :cond_0
    iget-object v8, p0, Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;->principal:Lorg/apache/jackrabbit/webdav/security/Principal;

    invoke-virtual {v8, p1}, Lorg/apache/jackrabbit/webdav/security/Principal;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v0, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 212
    :cond_1
    const-string v8, "deny"

    goto :goto_1

    .line 216
    .restart local v1    # "arr$":[Lorg/apache/jackrabbit/webdav/security/Privilege;
    .restart local v2    # "gd":Lorg/w3c/dom/Element;
    .restart local v3    # "i$":I
    .restart local v6    # "len$":I
    :cond_2
    iget-boolean v8, p0, Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;->isProtected:Z

    if-eqz v8, :cond_3

    .line 217
    const-string v8, "protected"

    sget-object v9, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v8, v9}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    .line 219
    :cond_3
    iget-object v8, p0, Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;->inheritedHref:Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 220
    const-string v8, "inherited"

    sget-object v9, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v8, v9}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 221
    .local v4, "inh":Lorg/w3c/dom/Element;
    iget-object v8, p0, Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;->inheritedHref:Ljava/lang/String;

    invoke-static {v8, p1}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->hrefToXml(Ljava/lang/String;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v4, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 223
    .end local v4    # "inh":Lorg/w3c/dom/Element;
    :cond_4
    return-object v0
.end method
