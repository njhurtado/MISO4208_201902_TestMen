.class public Lorg/apache/jackrabbit/webdav/security/Principal;
.super Ljava/lang/Object;
.source "Principal.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;
.implements Lorg/apache/jackrabbit/webdav/security/SecurityConstants;


# static fields
.field private static final ALL_PRINCIPAL:Lorg/apache/jackrabbit/webdav/security/Principal;

.field private static final AUTHENTICATED_PRINCIPAL:Lorg/apache/jackrabbit/webdav/security/Principal;

.field private static final PROP_PRINCIPALS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/jackrabbit/webdav/property/DavPropertyName;",
            "Lorg/apache/jackrabbit/webdav/security/Principal;",
            ">;"
        }
    .end annotation
.end field

.field private static final SELF_PRINCIPAL:Lorg/apache/jackrabbit/webdav/security/Principal;

.field private static final TYPE_ALL:I = 0x0

.field private static final TYPE_AUTHENTICATED:I = 0x1

.field private static final TYPE_HREF:I = 0x5

.field private static final TYPE_PROPERTY:I = 0x4

.field private static final TYPE_SELF:I = 0x3

.field private static final TYPE_UNAUTHENTICATED:I = 0x2

.field private static final UNAUTHENTICATED_PRINCIPAL:Lorg/apache/jackrabbit/webdav/security/Principal;

.field private static final XML_ALL:Ljava/lang/String; = "all"

.field private static final XML_AUTHENTICATED:Ljava/lang/String; = "authenticated"

.field public static final XML_PRINCIPAL:Ljava/lang/String; = "principal"

.field private static final XML_PROPERTY:Ljava/lang/String; = "property"

.field private static final XML_SELF:Ljava/lang/String; = "self"

.field private static final XML_UNAUTHENTICATED:Ljava/lang/String; = "unauthenticated"


# instance fields
.field private href:Ljava/lang/String;

.field private propertyName:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lorg/apache/jackrabbit/webdav/security/Principal;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/jackrabbit/webdav/security/Principal;-><init>(I)V

    sput-object v0, Lorg/apache/jackrabbit/webdav/security/Principal;->ALL_PRINCIPAL:Lorg/apache/jackrabbit/webdav/security/Principal;

    .line 57
    new-instance v0, Lorg/apache/jackrabbit/webdav/security/Principal;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/jackrabbit/webdav/security/Principal;-><init>(I)V

    sput-object v0, Lorg/apache/jackrabbit/webdav/security/Principal;->AUTHENTICATED_PRINCIPAL:Lorg/apache/jackrabbit/webdav/security/Principal;

    .line 58
    new-instance v0, Lorg/apache/jackrabbit/webdav/security/Principal;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/apache/jackrabbit/webdav/security/Principal;-><init>(I)V

    sput-object v0, Lorg/apache/jackrabbit/webdav/security/Principal;->UNAUTHENTICATED_PRINCIPAL:Lorg/apache/jackrabbit/webdav/security/Principal;

    .line 59
    new-instance v0, Lorg/apache/jackrabbit/webdav/security/Principal;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/apache/jackrabbit/webdav/security/Principal;-><init>(I)V

    sput-object v0, Lorg/apache/jackrabbit/webdav/security/Principal;->SELF_PRINCIPAL:Lorg/apache/jackrabbit/webdav/security/Principal;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/jackrabbit/webdav/security/Principal;->PROP_PRINCIPALS:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Lorg/apache/jackrabbit/webdav/security/Principal;->type:I

    .line 69
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "href"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/jackrabbit/webdav/security/Principal;->type:I

    .line 78
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/security/Principal;->href:Ljava/lang/String;

    .line 79
    return-void
.end method

.method private constructor <init>(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)V
    .locals 1
    .param p1, "propertyName"    # Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/jackrabbit/webdav/security/Principal;->type:I

    .line 73
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/security/Principal;->propertyName:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 74
    return-void
.end method

.method public static createFromXml(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/security/Principal;
    .locals 6
    .param p0, "principalElement"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x190

    .line 167
    const-string v3, "principal"

    sget-object v4, Lorg/apache/jackrabbit/webdav/security/Principal;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p0, v3, v4}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->matches(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 168
    new-instance v3, Lorg/apache/jackrabbit/webdav/DavException;

    const-string v4, "DAV:principal element expected."

    invoke-direct {v3, v5, v4}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 170
    :cond_0
    const-string v3, "all"

    sget-object v4, Lorg/apache/jackrabbit/webdav/security/Principal;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p0, v3, v4}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->hasChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 171
    sget-object v3, Lorg/apache/jackrabbit/webdav/security/Principal;->ALL_PRINCIPAL:Lorg/apache/jackrabbit/webdav/security/Principal;

    .line 184
    :goto_0
    return-object v3

    .line 172
    :cond_1
    const-string v3, "self"

    sget-object v4, Lorg/apache/jackrabbit/webdav/security/Principal;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p0, v3, v4}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->hasChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 173
    sget-object v3, Lorg/apache/jackrabbit/webdav/security/Principal;->SELF_PRINCIPAL:Lorg/apache/jackrabbit/webdav/security/Principal;

    goto :goto_0

    .line 174
    :cond_2
    const-string v3, "authenticated"

    sget-object v4, Lorg/apache/jackrabbit/webdav/security/Principal;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p0, v3, v4}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->hasChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 175
    sget-object v3, Lorg/apache/jackrabbit/webdav/security/Principal;->AUTHENTICATED_PRINCIPAL:Lorg/apache/jackrabbit/webdav/security/Principal;

    goto :goto_0

    .line 176
    :cond_3
    const-string v3, "unauthenticated"

    sget-object v4, Lorg/apache/jackrabbit/webdav/security/Principal;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p0, v3, v4}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->hasChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 177
    sget-object v3, Lorg/apache/jackrabbit/webdav/security/Principal;->UNAUTHENTICATED_PRINCIPAL:Lorg/apache/jackrabbit/webdav/security/Principal;

    goto :goto_0

    .line 178
    :cond_4
    const-string v3, "href"

    sget-object v4, Lorg/apache/jackrabbit/webdav/DavConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p0, v3, v4}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->hasChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 179
    const-string v3, "href"

    sget-object v4, Lorg/apache/jackrabbit/webdav/DavConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p0, v3, v4}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildText(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "href":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/security/Principal;->getHrefPrincipal(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/security/Principal;

    move-result-object v3

    goto :goto_0

    .line 181
    .end local v0    # "href":Ljava/lang/String;
    :cond_5
    const-string v3, "property"

    sget-object v4, Lorg/apache/jackrabbit/webdav/security/Principal;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p0, v3, v4}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->hasChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 182
    const-string v3, "property"

    sget-object v4, Lorg/apache/jackrabbit/webdav/security/Principal;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p0, v3, v4}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 183
    .local v2, "propEl":Lorg/w3c/dom/Element;
    invoke-static {v2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->createFromXml(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v1

    .line 184
    .local v1, "pn":Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    invoke-static {v1}, Lorg/apache/jackrabbit/webdav/security/Principal;->getPropertyPrincipal(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Lorg/apache/jackrabbit/webdav/security/Principal;

    move-result-object v3

    goto :goto_0

    .line 186
    .end local v1    # "pn":Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    .end local v2    # "propEl":Lorg/w3c/dom/Element;
    :cond_6
    new-instance v3, Lorg/apache/jackrabbit/webdav/DavException;

    const-string v4, "Invalid structure inside DAV:principal element."

    invoke-direct {v3, v5, v4}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public static getAllPrincipal()Lorg/apache/jackrabbit/webdav/security/Principal;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lorg/apache/jackrabbit/webdav/security/Principal;->ALL_PRINCIPAL:Lorg/apache/jackrabbit/webdav/security/Principal;

    return-object v0
.end method

.method public static getAuthenticatedPrincipal()Lorg/apache/jackrabbit/webdav/security/Principal;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lorg/apache/jackrabbit/webdav/security/Principal;->AUTHENTICATED_PRINCIPAL:Lorg/apache/jackrabbit/webdav/security/Principal;

    return-object v0
.end method

.method public static getHrefPrincipal(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/security/Principal;
    .locals 2
    .param p0, "href"    # Ljava/lang/String;

    .prologue
    .line 160
    if-nez p0, :cond_0

    .line 161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Href-Principal must contain a valid href."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    new-instance v0, Lorg/apache/jackrabbit/webdav/security/Principal;

    invoke-direct {v0, p0}, Lorg/apache/jackrabbit/webdav/security/Principal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPropertyPrincipal(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Lorg/apache/jackrabbit/webdav/security/Principal;
    .locals 3
    .param p0, "propertyName"    # Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .prologue
    .line 145
    if-nez p0, :cond_0

    .line 146
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Property-Principal must contain a valid property name."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    :cond_0
    sget-object v1, Lorg/apache/jackrabbit/webdav/security/Principal;->PROP_PRINCIPALS:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    sget-object v1, Lorg/apache/jackrabbit/webdav/security/Principal;->PROP_PRINCIPALS:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/jackrabbit/webdav/security/Principal;

    .line 155
    :goto_0
    return-object v1

    .line 153
    :cond_1
    new-instance v0, Lorg/apache/jackrabbit/webdav/security/Principal;

    invoke-direct {v0, p0}, Lorg/apache/jackrabbit/webdav/security/Principal;-><init>(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)V

    .line 154
    .local v0, "p":Lorg/apache/jackrabbit/webdav/security/Principal;
    sget-object v1, Lorg/apache/jackrabbit/webdav/security/Principal;->PROP_PRINCIPALS:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 155
    goto :goto_0
.end method

.method public static getSelfPrincipal()Lorg/apache/jackrabbit/webdav/security/Principal;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lorg/apache/jackrabbit/webdav/security/Principal;->SELF_PRINCIPAL:Lorg/apache/jackrabbit/webdav/security/Principal;

    return-object v0
.end method

.method public static getUnauthenticatedPrincipal()Lorg/apache/jackrabbit/webdav/security/Principal;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lorg/apache/jackrabbit/webdav/security/Principal;->UNAUTHENTICATED_PRINCIPAL:Lorg/apache/jackrabbit/webdav/security/Principal;

    return-object v0
.end method


# virtual methods
.method public getHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/security/Principal;->href:Ljava/lang/String;

    return-object v0
.end method

.method public getPropertyName()Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/security/Principal;->propertyName:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    return-object v0
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 5
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 101
    const-string v3, "principal"

    sget-object v4, Lorg/apache/jackrabbit/webdav/security/Principal;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v3, v4}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 102
    .local v1, "pEl":Lorg/w3c/dom/Element;
    iget v3, p0, Lorg/apache/jackrabbit/webdav/security/Principal;->type:I

    packed-switch v3, :pswitch_data_0

    .line 125
    :goto_0
    return-object v1

    .line 104
    :pswitch_0
    const-string v3, "all"

    sget-object v4, Lorg/apache/jackrabbit/webdav/security/Principal;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v1, v3, v4}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    goto :goto_0

    .line 107
    :pswitch_1
    const-string v3, "authenticated"

    sget-object v4, Lorg/apache/jackrabbit/webdav/security/Principal;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v1, v3, v4}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    goto :goto_0

    .line 110
    :pswitch_2
    const-string v3, "unauthenticated"

    sget-object v4, Lorg/apache/jackrabbit/webdav/security/Principal;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v1, v3, v4}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    goto :goto_0

    .line 113
    :pswitch_3
    const-string v3, "self"

    sget-object v4, Lorg/apache/jackrabbit/webdav/security/Principal;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v1, v3, v4}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    goto :goto_0

    .line 116
    :pswitch_4
    const-string v3, "property"

    sget-object v4, Lorg/apache/jackrabbit/webdav/security/Principal;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v1, v3, v4}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 117
    .local v2, "prop":Lorg/w3c/dom/Element;
    iget-object v3, p0, Lorg/apache/jackrabbit/webdav/security/Principal;->propertyName:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    invoke-virtual {v3, p1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 120
    .end local v2    # "prop":Lorg/w3c/dom/Element;
    :pswitch_5
    iget-object v3, p0, Lorg/apache/jackrabbit/webdav/security/Principal;->href:Ljava/lang/String;

    invoke-static {v3, p1}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->hrefToXml(Ljava/lang/String;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 121
    .local v0, "hrefEl":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
