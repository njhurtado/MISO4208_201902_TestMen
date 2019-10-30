.class public Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
.super Ljava/lang/Object;
.source "DavPropertyName.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/DavConstants;
.implements Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;
.implements Lorg/apache/jackrabbit/webdav/property/PropEntry;


# static fields
.field public static final CREATIONDATE:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final DISPLAYNAME:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final GETCONTENTLANGUAGE:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final GETCONTENTLENGTH:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final GETCONTENTTYPE:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final GETETAG:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final GETLASTMODIFIED:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final ISCOLLECTION:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final LOCKDISCOVERY:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final RESOURCETYPE:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final SOURCE:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final SUPPORTEDLOCK:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field private static final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/jackrabbit/webdav/xml/Namespace;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/jackrabbit/webdav/property/DavPropertyName;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final name:Ljava/lang/String;

.field private final namespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->cache:Ljava/util/Map;

    .line 39
    const-string v0, "creationdate"

    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->CREATIONDATE:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 40
    const-string v0, "displayname"

    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->DISPLAYNAME:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 41
    const-string v0, "getcontentlanguage"

    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->GETCONTENTLANGUAGE:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 42
    const-string v0, "getcontentlength"

    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->GETCONTENTLENGTH:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 43
    const-string v0, "getcontenttype"

    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->GETCONTENTTYPE:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 44
    const-string v0, "getetag"

    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->GETETAG:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 45
    const-string v0, "getlastmodified"

    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->GETLASTMODIFIED:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 48
    const-string v0, "lockdiscovery"

    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->LOCKDISCOVERY:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 49
    const-string v0, "resourcetype"

    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->RESOURCETYPE:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 50
    const-string v0, "source"

    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->SOURCE:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 51
    const-string v0, "supportedlock"

    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->SUPPORTEDLOCK:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 54
    const-string v0, "iscollection"

    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->ISCOLLECTION:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 132
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name and namespace must not be \'null\' for a DavPropertyName."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_1
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->name:Ljava/lang/String;

    .line 135
    iput-object p2, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->namespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .line 136
    return-void
.end method

.method public static declared-synchronized create(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 101
    const-class v1, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p0, v0}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "namespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .prologue
    .line 74
    const-class v3, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->cache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 75
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/jackrabbit/webdav/property/DavPropertyName;>;"
    if-nez v0, :cond_0

    .line 76
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/jackrabbit/webdav/property/DavPropertyName;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 77
    .restart local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/jackrabbit/webdav/property/DavPropertyName;>;"
    sget-object v2, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->cache:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 81
    .local v1, "ret":Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    if-nez v1, :cond_2

    .line 82
    sget-object v2, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-virtual {p1, v2}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    sget-object p1, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .line 86
    :cond_1
    new-instance v1, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .end local v1    # "ret":Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    invoke-direct {v1, p0, p1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;-><init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)V

    .line 87
    .restart local v1    # "ret":Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_2
    monitor-exit v3

    return-object v1

    .line 74
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/jackrabbit/webdav/property/DavPropertyName;>;"
    .end local v1    # "ret":Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized createFromXml(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    .locals 4
    .param p0, "nameElement"    # Lorg/w3c/dom/Element;

    .prologue
    .line 112
    const-class v2, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    monitor-enter v2

    if-nez p0, :cond_0

    .line 113
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot build DavPropertyName from a \'null\' element."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 115
    :cond_0
    :try_start_1
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "ns":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 117
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lorg/apache/jackrabbit/webdav/xml/Namespace;->EMPTY_NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v1, v3}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 119
    :goto_0
    monitor-exit v2

    return-object v1

    :cond_1
    :try_start_2
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/xml/Namespace;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 177
    instance-of v2, p1, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 178
    check-cast v0, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 179
    .local v0, "propName":Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    iget-object v2, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->name:Ljava/lang/String;

    iget-object v3, v0, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->namespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    iget-object v3, v0, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->namespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-virtual {v2, v3}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 181
    .end local v0    # "propName":Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    :cond_0
    return v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Lorg/apache/jackrabbit/webdav/xml/Namespace;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->namespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->namespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-virtual {v1}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    const v1, 0x7fffffff

    rem-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->name:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->namespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getExpandedName(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 2
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 203
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->name:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->namespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v0, v1}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method
