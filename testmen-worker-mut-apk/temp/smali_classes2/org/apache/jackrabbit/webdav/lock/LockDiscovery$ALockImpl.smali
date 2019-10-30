.class Lorg/apache/jackrabbit/webdav/lock/LockDiscovery$ALockImpl;
.super Ljava/lang/Object;
.source "LockDiscovery.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/lock/ActiveLock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/jackrabbit/webdav/lock/LockDiscovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ALockImpl"
.end annotation


# instance fields
.field private final alElement:Lorg/w3c/dom/Element;


# direct methods
.method private constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 2
    .param p1, "alElement"    # Lorg/w3c/dom/Element;

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const-string v0, "activelock"

    sget-object v1, Lorg/apache/jackrabbit/webdav/DavConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v0, v1}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->matches(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DAV:activelock element expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/lock/LockDiscovery$ALockImpl;->alElement:Lorg/w3c/dom/Element;

    .line 148
    return-void
.end method

.method synthetic constructor <init>(Lorg/w3c/dom/Element;Lorg/apache/jackrabbit/webdav/lock/LockDiscovery$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/w3c/dom/Element;
    .param p2, "x1"    # Lorg/apache/jackrabbit/webdav/lock/LockDiscovery$1;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lorg/apache/jackrabbit/webdav/lock/LockDiscovery$ALockImpl;-><init>(Lorg/w3c/dom/Element;)V

    return-void
.end method


# virtual methods
.method public getLockroot()Ljava/lang/String;
    .locals 4

    .prologue
    .line 209
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/lock/LockDiscovery$ALockImpl;->alElement:Lorg/w3c/dom/Element;

    const-string v2, "lockroot"

    sget-object v3, Lorg/apache/jackrabbit/webdav/DavConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v1, v2, v3}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 210
    .local v0, "root":Lorg/w3c/dom/Element;
    if-eqz v0, :cond_0

    .line 211
    const-string v1, "href"

    sget-object v2, Lorg/apache/jackrabbit/webdav/DavConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1, v2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildTextTrim(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Ljava/lang/String;

    move-result-object v1

    .line 214
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOwner()Ljava/lang/String;
    .locals 5

    .prologue
    .line 172
    const/4 v1, 0x0

    .line 173
    .local v1, "owner":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/jackrabbit/webdav/lock/LockDiscovery$ALockImpl;->alElement:Lorg/w3c/dom/Element;

    const-string v3, "owner"

    sget-object v4, Lorg/apache/jackrabbit/webdav/DavConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v2, v3, v4}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 174
    .local v0, "ow":Lorg/w3c/dom/Element;
    if-eqz v0, :cond_0

    .line 175
    const-string v2, "href"

    sget-object v3, Lorg/apache/jackrabbit/webdav/DavConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v2, v3}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->hasChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 176
    const-string v2, "href"

    sget-object v3, Lorg/apache/jackrabbit/webdav/DavConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v2, v3}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildTextTrim(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Ljava/lang/String;

    move-result-object v1

    .line 181
    :cond_0
    :goto_0
    return-object v1

    .line 178
    :cond_1
    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getTextTrim(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getScope()Lorg/apache/jackrabbit/webdav/lock/Scope;
    .locals 3

    .prologue
    .line 226
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/lock/LockDiscovery$ALockImpl;->alElement:Lorg/w3c/dom/Element;

    const-string v1, "lockscope"

    sget-object v2, Lorg/apache/jackrabbit/webdav/DavConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1, v2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/lock/Scope;->createFromXml(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/lock/Scope;

    move-result-object v0

    return-object v0
.end method

.method public getTimeout()J
    .locals 4

    .prologue
    .line 191
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/lock/LockDiscovery$ALockImpl;->alElement:Lorg/w3c/dom/Element;

    const-string v2, "timeout"

    sget-object v3, Lorg/apache/jackrabbit/webdav/DavConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v1, v2, v3}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildTextTrim(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "t":Ljava/lang/String;
    const-wide/32 v2, -0x80000000

    invoke-static {v0, v2, v3}, Lorg/apache/jackrabbit/webdav/header/TimeoutHeader;->parse(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public getToken()Ljava/lang/String;
    .locals 4

    .prologue
    .line 164
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/lock/LockDiscovery$ALockImpl;->alElement:Lorg/w3c/dom/Element;

    const-string v2, "locktoken"

    sget-object v3, Lorg/apache/jackrabbit/webdav/DavConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v1, v2, v3}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 165
    .local v0, "ltEl":Lorg/w3c/dom/Element;
    if-eqz v0, :cond_0

    .line 166
    const-string v1, "href"

    sget-object v2, Lorg/apache/jackrabbit/webdav/DavConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1, v2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildText(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Ljava/lang/String;

    move-result-object v1

    .line 168
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getType()Lorg/apache/jackrabbit/webdav/lock/Type;
    .locals 3

    .prologue
    .line 222
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/lock/LockDiscovery$ALockImpl;->alElement:Lorg/w3c/dom/Element;

    const-string v1, "locktype"

    sget-object v2, Lorg/apache/jackrabbit/webdav/DavConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1, v2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/lock/Type;->createFromXml(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/lock/Type;

    move-result-object v0

    return-object v0
.end method

.method public isDeep()Z
    .locals 4

    .prologue
    .line 200
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/lock/LockDiscovery$ALockImpl;->alElement:Lorg/w3c/dom/Element;

    const-string v2, "depth"

    sget-object v3, Lorg/apache/jackrabbit/webdav/DavConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v1, v2, v3}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildTextTrim(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "depth":Ljava/lang/String;
    const-string v1, "infinity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public isExpired()Z
    .locals 2

    .prologue
    .line 160
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isLockedByToken(Ljava/lang/String;)Z
    .locals 2
    .param p1, "lockToken"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/lock/LockDiscovery$ALockImpl;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "lt":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 153
    const/4 v1, 0x0

    .line 155
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public setIsDeep(Z)V
    .locals 2
    .param p1, "isDeep"    # Z

    .prologue
    .line 205
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLockroot(Ljava/lang/String;)V
    .locals 2
    .param p1, "lockroot"    # Ljava/lang/String;

    .prologue
    .line 218
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOwner(Ljava/lang/String;)V
    .locals 2
    .param p1, "owner"    # Ljava/lang/String;

    .prologue
    .line 185
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTimeout(J)V
    .locals 2
    .param p1, "timeout"    # J

    .prologue
    .line 196
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 2
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 230
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/lock/LockDiscovery$ALockImpl;->alElement:Lorg/w3c/dom/Element;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    return-object v0
.end method
