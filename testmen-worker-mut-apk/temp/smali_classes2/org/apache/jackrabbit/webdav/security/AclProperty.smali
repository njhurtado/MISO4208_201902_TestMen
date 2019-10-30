.class public Lorg/apache/jackrabbit/webdav/security/AclProperty;
.super Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;
.source "AclProperty.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/jackrabbit/webdav/security/AclProperty$1;,
        Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty",
        "<",
        "Ljava/util/List",
        "<",
        "Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final aces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "aces":Ljava/util/List;, "Ljava/util/List<Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;>;"
    sget-object v0, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->ACL:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;-><init>(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;Z)V

    .line 70
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/security/AclProperty;->aces:Ljava/util/List;

    .line 71
    return-void
.end method

.method public constructor <init>([Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;)V
    .locals 1
    .param p1, "accessControlElements"    # [Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;

    .prologue
    .line 65
    if-nez p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/jackrabbit/webdav/security/AclProperty;-><init>(Ljava/util/List;)V

    .line 66
    return-void

    .line 65
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static createDenyAce(Lorg/apache/jackrabbit/webdav/security/Principal;[Lorg/apache/jackrabbit/webdav/security/Privilege;ZZLorg/apache/jackrabbit/webdav/security/AclResource;)Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;
    .locals 8
    .param p0, "principal"    # Lorg/apache/jackrabbit/webdav/security/Principal;
    .param p1, "privileges"    # [Lorg/apache/jackrabbit/webdav/security/Privilege;
    .param p2, "invert"    # Z
    .param p3, "isProtected"    # Z
    .param p4, "inheritedFrom"    # Lorg/apache/jackrabbit/webdav/security/AclResource;

    .prologue
    .line 108
    new-instance v0, Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p2

    move-object v3, p1

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;-><init>(Lorg/apache/jackrabbit/webdav/security/Principal;Z[Lorg/apache/jackrabbit/webdav/security/Privilege;ZZLorg/apache/jackrabbit/webdav/security/AclResource;Lorg/apache/jackrabbit/webdav/security/AclProperty$1;)V

    return-object v0
.end method

.method public static createFromXml(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/security/AclProperty;
    .locals 6
    .param p0, "aclElement"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 91
    sget-object v3, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->ACL:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    invoke-virtual {v3}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->ACL:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    invoke-virtual {v4}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->getNamespace()Lorg/apache/jackrabbit/webdav/xml/Namespace;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->matches(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 92
    new-instance v3, Lorg/apache/jackrabbit/webdav/DavException;

    const/16 v4, 0x190

    const-string v5, "ACL request requires a DAV:acl body."

    invoke-direct {v3, v4, v5}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 94
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v1, "aces":Ljava/util/List;, "Ljava/util/List<Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;>;"
    const-string v3, "ace"

    sget-object v4, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p0, v3, v4}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/xml/ElementIterator;

    move-result-object v2

    .line 96
    .local v2, "it":Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    :goto_0
    invoke-virtual {v2}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    invoke-virtual {v2}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->nextElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 98
    .local v0, "aceElem":Lorg/w3c/dom/Element;
    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;->access$000(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 100
    .end local v0    # "aceElem":Lorg/w3c/dom/Element;
    :cond_1
    new-instance v3, Lorg/apache/jackrabbit/webdav/security/AclProperty;

    invoke-direct {v3, v1}, Lorg/apache/jackrabbit/webdav/security/AclProperty;-><init>(Ljava/util/List;)V

    return-object v3
.end method

.method public static createGrantAce(Lorg/apache/jackrabbit/webdav/security/Principal;[Lorg/apache/jackrabbit/webdav/security/Privilege;ZZLorg/apache/jackrabbit/webdav/security/AclResource;)Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;
    .locals 8
    .param p0, "principal"    # Lorg/apache/jackrabbit/webdav/security/Principal;
    .param p1, "privileges"    # [Lorg/apache/jackrabbit/webdav/security/Privilege;
    .param p2, "invert"    # Z
    .param p3, "isProtected"    # Z
    .param p4, "inheritedFrom"    # Lorg/apache/jackrabbit/webdav/security/AclResource;

    .prologue
    .line 104
    new-instance v0, Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;

    const/4 v4, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p2

    move-object v3, p1

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;-><init>(Lorg/apache/jackrabbit/webdav/security/Principal;Z[Lorg/apache/jackrabbit/webdav/security/Privilege;ZZLorg/apache/jackrabbit/webdav/security/AclResource;Lorg/apache/jackrabbit/webdav/security/AclProperty$1;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/security/AclProperty;->getValue()Ljava/util/List;

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
            "Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/security/AclProperty;->aces:Ljava/util/List;

    return-object v0
.end method
