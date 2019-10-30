.class public Lorg/apache/jackrabbit/webdav/security/Privilege;
.super Ljava/lang/Object;
.source "Privilege.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;


# static fields
.field public static final PRIVILEGE_ALL:Lorg/apache/jackrabbit/webdav/security/Privilege;

.field public static final PRIVILEGE_BIND:Lorg/apache/jackrabbit/webdav/security/Privilege;

.field public static final PRIVILEGE_READ:Lorg/apache/jackrabbit/webdav/security/Privilege;

.field public static final PRIVILEGE_READ_ACL:Lorg/apache/jackrabbit/webdav/security/Privilege;

.field public static final PRIVILEGE_READ_CURRENT_USER_PRIVILEGE_SET:Lorg/apache/jackrabbit/webdav/security/Privilege;

.field public static final PRIVILEGE_UNBIND:Lorg/apache/jackrabbit/webdav/security/Privilege;

.field public static final PRIVILEGE_UNLOCK:Lorg/apache/jackrabbit/webdav/security/Privilege;

.field public static final PRIVILEGE_WRITE:Lorg/apache/jackrabbit/webdav/security/Privilege;

.field public static final PRIVILEGE_WRITE_ACL:Lorg/apache/jackrabbit/webdav/security/Privilege;

.field public static final PRIVILEGE_WRITE_CONTENT:Lorg/apache/jackrabbit/webdav/security/Privilege;

.field public static final PRIVILEGE_WRITE_PROPERTIES:Lorg/apache/jackrabbit/webdav/security/Privilege;

.field private static final REGISTERED_PRIVILEGES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/jackrabbit/webdav/security/Privilege;",
            ">;"
        }
    .end annotation
.end field

.field public static final XML_PRIVILEGE:Ljava/lang/String; = "privilege"


# instance fields
.field private final namespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

.field private final privilege:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/jackrabbit/webdav/security/Privilege;->REGISTERED_PRIVILEGES:Ljava/util/Map;

    .line 50
    const-string v0, "read"

    sget-object v1, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/security/Privilege;->getPrivilege(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/security/Privilege;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/security/Privilege;->PRIVILEGE_READ:Lorg/apache/jackrabbit/webdav/security/Privilege;

    .line 58
    const-string v0, "write"

    sget-object v1, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/security/Privilege;->getPrivilege(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/security/Privilege;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/security/Privilege;->PRIVILEGE_WRITE:Lorg/apache/jackrabbit/webdav/security/Privilege;

    .line 67
    const-string v0, "write-properties"

    sget-object v1, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/security/Privilege;->getPrivilege(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/security/Privilege;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/security/Privilege;->PRIVILEGE_WRITE_PROPERTIES:Lorg/apache/jackrabbit/webdav/security/Privilege;

    .line 74
    const-string v0, "write-content"

    sget-object v1, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/security/Privilege;->getPrivilege(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/security/Privilege;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/security/Privilege;->PRIVILEGE_WRITE_CONTENT:Lorg/apache/jackrabbit/webdav/security/Privilege;

    .line 82
    const-string v0, "unlock"

    sget-object v1, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/security/Privilege;->getPrivilege(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/security/Privilege;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/security/Privilege;->PRIVILEGE_UNLOCK:Lorg/apache/jackrabbit/webdav/security/Privilege;

    .line 89
    const-string v0, "read-acl"

    sget-object v1, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/security/Privilege;->getPrivilege(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/security/Privilege;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/security/Privilege;->PRIVILEGE_READ_ACL:Lorg/apache/jackrabbit/webdav/security/Privilege;

    .line 97
    const-string v0, "read-current-user-privilege-set"

    sget-object v1, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/security/Privilege;->getPrivilege(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/security/Privilege;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/security/Privilege;->PRIVILEGE_READ_CURRENT_USER_PRIVILEGE_SET:Lorg/apache/jackrabbit/webdav/security/Privilege;

    .line 104
    const-string v0, "write-acl"

    sget-object v1, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/security/Privilege;->getPrivilege(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/security/Privilege;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/security/Privilege;->PRIVILEGE_WRITE_ACL:Lorg/apache/jackrabbit/webdav/security/Privilege;

    .line 112
    const-string v0, "bind"

    sget-object v1, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/security/Privilege;->getPrivilege(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/security/Privilege;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/security/Privilege;->PRIVILEGE_BIND:Lorg/apache/jackrabbit/webdav/security/Privilege;

    .line 120
    const-string v0, "unbind"

    sget-object v1, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/security/Privilege;->getPrivilege(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/security/Privilege;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/security/Privilege;->PRIVILEGE_UNBIND:Lorg/apache/jackrabbit/webdav/security/Privilege;

    .line 127
    const-string v0, "all"

    sget-object v1, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/security/Privilege;->getPrivilege(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/security/Privilege;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/security/Privilege;->PRIVILEGE_ALL:Lorg/apache/jackrabbit/webdav/security/Privilege;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)V
    .locals 0
    .param p1, "privilege"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/security/Privilege;->privilege:Ljava/lang/String;

    .line 140
    iput-object p2, p0, Lorg/apache/jackrabbit/webdav/security/Privilege;->namespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .line 141
    return-void
.end method

.method public static getPrivilege(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/security/Privilege;
    .locals 4
    .param p0, "privilege"    # Ljava/lang/String;
    .param p1, "namespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .prologue
    .line 174
    if-nez p0, :cond_0

    .line 175
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\'null\' is not a valid privilege."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 177
    :cond_0
    if-nez p1, :cond_1

    .line 178
    sget-object p1, Lorg/apache/jackrabbit/webdav/xml/Namespace;->EMPTY_NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .line 180
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "key":Ljava/lang/String;
    sget-object v2, Lorg/apache/jackrabbit/webdav/security/Privilege;->REGISTERED_PRIVILEGES:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 182
    sget-object v2, Lorg/apache/jackrabbit/webdav/security/Privilege;->REGISTERED_PRIVILEGES:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/jackrabbit/webdav/security/Privilege;

    .line 186
    :goto_0
    return-object v2

    .line 184
    :cond_2
    new-instance v1, Lorg/apache/jackrabbit/webdav/security/Privilege;

    invoke-direct {v1, p0, p1}, Lorg/apache/jackrabbit/webdav/security/Privilege;-><init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)V

    .line 185
    .local v1, "p":Lorg/apache/jackrabbit/webdav/security/Privilege;
    sget-object v2, Lorg/apache/jackrabbit/webdav/security/Privilege;->REGISTERED_PRIVILEGES:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 186
    goto :goto_0
.end method

.method public static getPrivilege(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/security/Privilege;
    .locals 4
    .param p0, "privilege"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 198
    const-string v1, "privilege"

    sget-object v2, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p0, v1, v2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->matches(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    new-instance v1, Lorg/apache/jackrabbit/webdav/DavException;

    const/16 v2, 0x190

    const-string v3, "DAV:privilege element expected."

    invoke-direct {v1, v2, v3}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 201
    :cond_0
    invoke-static {p0}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 202
    .local v0, "el":Lorg/w3c/dom/Element;
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getNamespace(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/xml/Namespace;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/jackrabbit/webdav/security/Privilege;->getPrivilege(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/security/Privilege;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/security/Privilege;->privilege:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Lorg/apache/jackrabbit/webdav/xml/Namespace;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/security/Privilege;->namespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    return-object v0
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 3
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 161
    const-string v1, "privilege"

    sget-object v2, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v1, v2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 162
    .local v0, "privEl":Lorg/w3c/dom/Element;
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/security/Privilege;->privilege:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/jackrabbit/webdav/security/Privilege;->namespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1, v2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    .line 163
    return-object v0
.end method
