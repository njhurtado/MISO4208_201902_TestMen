.class public interface abstract Lorg/apache/jackrabbit/webdav/security/SecurityConstants;
.super Ljava/lang/Object;
.source "SecurityConstants.java"


# static fields
.field public static final ACL:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final ACL_RESTRICTIONS:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final ALTERNATE_URI_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final CURRENT_USER_PRIVILEGE_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final GROUP:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final GROUP_MEMBERSHIP:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final GROUP_MEMBER_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final INHERITED_ACL_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

.field public static final OWNER:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final PRINCIPAL_COLLECTION_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final PRINCIPAL_RESOURCETYPE:I

.field public static final PRINCIPAL_URL:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final SUPPORTED_PRIVILEGE_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lorg/apache/jackrabbit/webdav/DavConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    sput-object v0, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .line 42
    const-string v0, "principal"

    sget-object v1, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/ResourceType;->registerResourceType(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)I

    move-result v0

    sput v0, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->PRINCIPAL_RESOURCETYPE:I

    .line 49
    const-string v0, "principal-URL"

    sget-object v1, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->PRINCIPAL_URL:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 54
    const-string v0, "alternate-URI-set"

    sget-object v1, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->ALTERNATE_URI_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 59
    const-string v0, "group-member-set"

    sget-object v1, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->GROUP_MEMBER_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 64
    const-string v0, "group-membership"

    sget-object v1, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->GROUP_MEMBERSHIP:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 71
    const-string v0, "owner"

    sget-object v1, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->OWNER:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 76
    const-string v0, "group"

    sget-object v1, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->GROUP:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 81
    const-string v0, "supported-privilege-set"

    sget-object v1, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->SUPPORTED_PRIVILEGE_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 86
    const-string v0, "current-user-privilege-set"

    sget-object v1, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->CURRENT_USER_PRIVILEGE_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 94
    const-string v0, "acl"

    sget-object v1, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->ACL:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 99
    const-string v0, "acl-restrictions"

    sget-object v1, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->ACL_RESTRICTIONS:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 104
    const-string v0, "inherited-acl-set"

    sget-object v1, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->INHERITED_ACL_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 109
    const-string v0, "principal-collection-set"

    sget-object v1, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->PRINCIPAL_COLLECTION_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    return-void
.end method
