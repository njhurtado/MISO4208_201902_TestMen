.class public Lorg/apache/jackrabbit/webdav/security/SupportedPrivilegeSetProperty;
.super Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;
.source "SupportedPrivilegeSetProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty",
        "<",
        "Ljava/util/List",
        "<",
        "Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final supportedPrivileges:[Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;


# direct methods
.method public constructor <init>(Lorg/apache/jackrabbit/webdav/property/DavProperty;)V
    .locals 8
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
    .line 62
    .local p1, "p":Lorg/apache/jackrabbit/webdav/property/DavProperty;, "Lorg/apache/jackrabbit/webdav/property/DavProperty<*>;"
    sget-object v5, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->SUPPORTED_PRIVILEGE_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;-><init>(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;Z)V

    .line 63
    sget-object v5, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->SUPPORTED_PRIVILEGE_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/security/SupportedPrivilegeSetProperty;->getName()Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 64
    new-instance v5, Lorg/apache/jackrabbit/webdav/DavException;

    const/16 v6, 0x190

    const-string v7, "DAV:supported-privilege-set expected."

    invoke-direct {v5, v6, v7}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 67
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v4, "supportedPrivs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;>;"
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/property/DavProperty;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 70
    .local v3, "obj":Ljava/lang/Object;
    instance-of v5, v3, Lorg/w3c/dom/Element;

    if-eqz v5, :cond_2

    .line 71
    check-cast v3, Lorg/w3c/dom/Element;

    .end local v3    # "obj":Ljava/lang/Object;
    invoke-static {v3}, Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;->getSupportedPrivilege(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    .restart local v3    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v5, v3, Ljava/util/Collection;

    if-eqz v5, :cond_1

    .line 73
    check-cast v3, Ljava/util/Collection;

    .end local v3    # "obj":Ljava/lang/Object;
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 74
    .local v0, "entry":Ljava/lang/Object;
    instance-of v5, v0, Lorg/w3c/dom/Element;

    if-eqz v5, :cond_3

    .line 75
    check-cast v0, Lorg/w3c/dom/Element;

    .end local v0    # "entry":Ljava/lang/Object;
    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;->getSupportedPrivilege(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 80
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;

    iput-object v5, p0, Lorg/apache/jackrabbit/webdav/security/SupportedPrivilegeSetProperty;->supportedPrivileges:[Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;

    .line 81
    return-void
.end method

.method public constructor <init>([Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;)V
    .locals 2
    .param p1, "supportedPrivileges"    # [Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;

    .prologue
    .line 57
    sget-object v0, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->SUPPORTED_PRIVILEGE_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;-><init>(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;Z)V

    .line 58
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/security/SupportedPrivilegeSetProperty;->supportedPrivileges:[Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;

    .line 59
    return-void
.end method


# virtual methods
.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/security/SupportedPrivilegeSetProperty;->getValue()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/security/SupportedPrivilegeSetProperty;->supportedPrivileges:[Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;

    if-nez v1, :cond_0

    .line 89
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 93
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;>;"
    :goto_0
    return-object v0

    .line 91
    .end local v0    # "l":Ljava/util/List;, "Ljava/util/List<Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;>;"
    :cond_0
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/security/SupportedPrivilegeSetProperty;->supportedPrivileges:[Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .restart local v0    # "l":Ljava/util/List;, "Ljava/util/List<Lorg/apache/jackrabbit/webdav/security/SupportedPrivilege;>;"
    goto :goto_0
.end method
