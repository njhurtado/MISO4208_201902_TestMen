.class public Lorg/apache/jackrabbit/webdav/security/CurrentUserPrivilegeSetProperty;
.super Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;
.source "CurrentUserPrivilegeSetProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty",
        "<",
        "Ljava/util/Collection",
        "<",
        "Lorg/apache/jackrabbit/webdav/security/Privilege;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final privileges:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/apache/jackrabbit/webdav/security/Privilege;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/jackrabbit/webdav/property/DavProperty;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/jackrabbit/webdav/property/DavProperty",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "xmlDavProperty":Lorg/apache/jackrabbit/webdav/property/DavProperty;, "Lorg/apache/jackrabbit/webdav/property/DavProperty<*>;"
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/property/DavProperty;->getName()Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;-><init>(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;Z)V

    .line 62
    sget-object v3, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->CURRENT_USER_PRIVILEGE_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/security/CurrentUserPrivilegeSetProperty;->getName()Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 63
    new-instance v3, Lorg/apache/jackrabbit/webdav/DavException;

    const/16 v4, 0x190

    const-string v5, "DAV:current-user-privilege-set expected."

    invoke-direct {v3, v4, v5}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 65
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lorg/apache/jackrabbit/webdav/security/CurrentUserPrivilegeSetProperty;->privileges:Ljava/util/Set;

    .line 68
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/property/DavProperty;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 69
    .local v2, "value":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 70
    instance-of v3, v2, Lorg/w3c/dom/Element;

    if-eqz v3, :cond_2

    .line 71
    iget-object v3, p0, Lorg/apache/jackrabbit/webdav/security/CurrentUserPrivilegeSetProperty;->privileges:Ljava/util/Set;

    check-cast v2, Lorg/w3c/dom/Element;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-static {v2}, Lorg/apache/jackrabbit/webdav/security/Privilege;->getPrivilege(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/security/Privilege;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_1
    return-void

    .line 72
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_1

    .line 73
    check-cast v2, Ljava/util/Collection;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 74
    .local v0, "entry":Ljava/lang/Object;
    instance-of v3, v0, Lorg/w3c/dom/Element;

    if-eqz v3, :cond_3

    .line 75
    iget-object v3, p0, Lorg/apache/jackrabbit/webdav/security/CurrentUserPrivilegeSetProperty;->privileges:Ljava/util/Set;

    check-cast v0, Lorg/w3c/dom/Element;

    .end local v0    # "entry":Ljava/lang/Object;
    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/security/Privilege;->getPrivilege(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/security/Privilege;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public constructor <init>([Lorg/apache/jackrabbit/webdav/security/Privilege;)V
    .locals 6
    .param p1, "privileges"    # [Lorg/apache/jackrabbit/webdav/security/Privilege;

    .prologue
    .line 43
    sget-object v4, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->CURRENT_USER_PRIVILEGE_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;-><init>(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;Z)V

    .line 45
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lorg/apache/jackrabbit/webdav/security/CurrentUserPrivilegeSetProperty;->privileges:Ljava/util/Set;

    .line 46
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/jackrabbit/webdav/security/Privilege;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 47
    .local v3, "privilege":Lorg/apache/jackrabbit/webdav/security/Privilege;
    if-eqz v3, :cond_0

    .line 48
    iget-object v4, p0, Lorg/apache/jackrabbit/webdav/security/CurrentUserPrivilegeSetProperty;->privileges:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    .end local v3    # "privilege":Lorg/apache/jackrabbit/webdav/security/Privilege;
    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/security/CurrentUserPrivilegeSetProperty;->getValue()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/jackrabbit/webdav/security/Privilege;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/security/CurrentUserPrivilegeSetProperty;->privileges:Ljava/util/Set;

    return-object v0
.end method
