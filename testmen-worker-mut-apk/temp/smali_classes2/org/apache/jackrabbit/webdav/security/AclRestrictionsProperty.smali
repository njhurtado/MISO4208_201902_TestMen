.class public Lorg/apache/jackrabbit/webdav/security/AclRestrictionsProperty;
.super Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;
.source "AclRestrictionsProperty.java"


# static fields
.field private static final XML_DENY_BEFORE_GRANT:Ljava/lang/String; = "deny-before-grant"

.field private static final XML_GRANT_ONLY:Ljava/lang/String; = "grant-only"

.field private static final XML_NO_INVERT:Ljava/lang/String; = "no-invert"


# instance fields
.field private final denyBeforeGrant:Z

.field private final grantOnly:Z

.field private final noInvert:Z

.field private final requiredPrincipal:Lorg/apache/jackrabbit/webdav/security/Principal;


# direct methods
.method public constructor <init>(ZZZLorg/apache/jackrabbit/webdav/security/Principal;)V
    .locals 2
    .param p1, "grantOnly"    # Z
    .param p2, "noInvert"    # Z
    .param p3, "denyBeforeGrant"    # Z
    .param p4, "requiredPrincipal"    # Lorg/apache/jackrabbit/webdav/security/Principal;

    .prologue
    .line 54
    sget-object v0, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->ACL_RESTRICTIONS:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;-><init>(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;Z)V

    .line 55
    iput-boolean p1, p0, Lorg/apache/jackrabbit/webdav/security/AclRestrictionsProperty;->grantOnly:Z

    .line 56
    iput-boolean p2, p0, Lorg/apache/jackrabbit/webdav/security/AclRestrictionsProperty;->noInvert:Z

    .line 57
    iput-boolean p3, p0, Lorg/apache/jackrabbit/webdav/security/AclRestrictionsProperty;->denyBeforeGrant:Z

    .line 58
    iput-object p4, p0, Lorg/apache/jackrabbit/webdav/security/AclRestrictionsProperty;->requiredPrincipal:Lorg/apache/jackrabbit/webdav/security/Principal;

    .line 59
    return-void
.end method


# virtual methods
.method public getRequiredPrincipal()Lorg/apache/jackrabbit/webdav/security/Principal;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/security/AclRestrictionsProperty;->requiredPrincipal:Lorg/apache/jackrabbit/webdav/security/Principal;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented. Use the property specific methods instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isDenyBeforeGrant()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lorg/apache/jackrabbit/webdav/security/AclRestrictionsProperty;->denyBeforeGrant:Z

    return v0
.end method

.method public isGrantOnly()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lorg/apache/jackrabbit/webdav/security/AclRestrictionsProperty;->grantOnly:Z

    return v0
.end method

.method public isNoInvert()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lorg/apache/jackrabbit/webdav/security/AclRestrictionsProperty;->noInvert:Z

    return v0
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 3
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 75
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/security/AclRestrictionsProperty;->getName()Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 76
    .local v0, "elem":Lorg/w3c/dom/Element;
    iget-boolean v1, p0, Lorg/apache/jackrabbit/webdav/security/AclRestrictionsProperty;->grantOnly:Z

    if-eqz v1, :cond_0

    .line 77
    const-string v1, "grant-only"

    sget-object v2, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1, v2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    .line 79
    :cond_0
    iget-boolean v1, p0, Lorg/apache/jackrabbit/webdav/security/AclRestrictionsProperty;->noInvert:Z

    if-eqz v1, :cond_1

    .line 80
    const-string v1, "no-invert"

    sget-object v2, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1, v2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    .line 82
    :cond_1
    iget-boolean v1, p0, Lorg/apache/jackrabbit/webdav/security/AclRestrictionsProperty;->denyBeforeGrant:Z

    if-eqz v1, :cond_2

    .line 83
    const-string v1, "deny-before-grant"

    sget-object v2, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1, v2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    .line 85
    :cond_2
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/security/AclRestrictionsProperty;->requiredPrincipal:Lorg/apache/jackrabbit/webdav/security/Principal;

    if-eqz v1, :cond_3

    .line 86
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/security/AclRestrictionsProperty;->requiredPrincipal:Lorg/apache/jackrabbit/webdav/security/Principal;

    invoke-virtual {v1, p1}, Lorg/apache/jackrabbit/webdav/security/Principal;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 88
    :cond_3
    return-object v0
.end method
