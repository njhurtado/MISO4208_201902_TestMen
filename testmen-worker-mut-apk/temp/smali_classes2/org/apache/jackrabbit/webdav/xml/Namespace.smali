.class public Lorg/apache/jackrabbit/webdav/xml/Namespace;
.super Ljava/lang/Object;
.source "Namespace.java"


# static fields
.field public static final EMPTY_NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

.field public static final XMLNS_NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

.field public static final XML_NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private final prefix:Ljava/lang/String;

.field private final uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const-class v0, Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/xml/Namespace;->log:Lorg/slf4j/Logger;

    .line 29
    new-instance v0, Lorg/apache/jackrabbit/webdav/xml/Namespace;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lorg/apache/jackrabbit/webdav/xml/Namespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/jackrabbit/webdav/xml/Namespace;->EMPTY_NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .line 30
    new-instance v0, Lorg/apache/jackrabbit/webdav/xml/Namespace;

    const-string v1, "xml"

    const-string v2, "http://www.w3.org/XML/1998/namespace"

    invoke-direct {v0, v1, v2}, Lorg/apache/jackrabbit/webdav/xml/Namespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/jackrabbit/webdav/xml/Namespace;->XML_NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .line 31
    new-instance v0, Lorg/apache/jackrabbit/webdav/xml/Namespace;

    const-string v1, "xmlns"

    const-string v2, "http://www.w3.org/2000/xmlns/"

    invoke-direct {v0, v1, v2}, Lorg/apache/jackrabbit/webdav/xml/Namespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/jackrabbit/webdav/xml/Namespace;->XMLNS_NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/xml/Namespace;->prefix:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lorg/apache/jackrabbit/webdav/xml/Namespace;->uri:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static getNamespace(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/xml/Namespace;
    .locals 1
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 54
    const-string v0, ""

    invoke-static {v0, p0}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/xml/Namespace;

    move-result-object v0

    return-object v0
.end method

.method public static getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/xml/Namespace;
    .locals 1
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 44
    if-nez p0, :cond_0

    .line 45
    sget-object v0, Lorg/apache/jackrabbit/webdav/xml/Namespace;->EMPTY_NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-virtual {v0}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object p0

    .line 47
    :cond_0
    if-nez p1, :cond_1

    .line 48
    sget-object v0, Lorg/apache/jackrabbit/webdav/xml/Namespace;->EMPTY_NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-virtual {v0}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getURI()Ljava/lang/String;

    move-result-object p1

    .line 50
    :cond_1
    new-instance v0, Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-direct {v0, p0, p1}, Lorg/apache/jackrabbit/webdav/xml/Namespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 89
    if-ne p1, p0, :cond_0

    .line 90
    const/4 v0, 0x1

    .line 95
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return v0

    .line 92
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lorg/apache/jackrabbit/webdav/xml/Namespace;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/xml/Namespace;->uri:Ljava/lang/String;

    check-cast p1, Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Lorg/apache/jackrabbit/webdav/xml/Namespace;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 95
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/xml/Namespace;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/xml/Namespace;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/xml/Namespace;->uri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSame(Ljava/lang/String;)Z
    .locals 2
    .param p1, "namespaceURI"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-static {p1}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getNamespace(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/xml/Namespace;

    move-result-object v0

    .line 78
    .local v0, "other":Lorg/apache/jackrabbit/webdav/xml/Namespace;
    invoke-virtual {p0, v0}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
