.class public abstract Lorg/apache/jackrabbit/webdav/lock/AbstractActiveLock;
.super Ljava/lang/Object;
.source "AbstractActiveLock.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/lock/ActiveLock;
.implements Lorg/apache/jackrabbit/webdav/DavConstants;


# instance fields
.field private lockroot:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLockroot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/lock/AbstractActiveLock;->lockroot:Ljava/lang/String;

    return-object v0
.end method

.method public setLockroot(Ljava/lang/String;)V
    .locals 0
    .param p1, "lockroot"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/lock/AbstractActiveLock;->lockroot:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 8
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 53
    const-string v3, "activelock"

    sget-object v6, Lorg/apache/jackrabbit/webdav/lock/AbstractActiveLock;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v3, v6}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 56
    .local v0, "activeLock":Lorg/w3c/dom/Element;
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/lock/AbstractActiveLock;->getScope()Lorg/apache/jackrabbit/webdav/lock/Scope;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/jackrabbit/webdav/lock/Scope;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 58
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/lock/AbstractActiveLock;->getType()Lorg/apache/jackrabbit/webdav/lock/Type;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/jackrabbit/webdav/lock/Type;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 60
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/lock/AbstractActiveLock;->isDeep()Z

    move-result v3

    invoke-static {v3, p1}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->depthToXml(ZLorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 62
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/lock/AbstractActiveLock;->getTimeout()J

    move-result-wide v4

    .line 63
    .local v4, "timeout":J
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/lock/AbstractActiveLock;->isExpired()Z

    move-result v3

    if-nez v3, :cond_0

    const-wide/32 v6, -0x80000000

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 64
    invoke-static {v4, v5, p1}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->timeoutToXml(JLorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 68
    :cond_0
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/lock/AbstractActiveLock;->getOwner()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 69
    const-string v3, "owner"

    sget-object v6, Lorg/apache/jackrabbit/webdav/lock/AbstractActiveLock;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/lock/AbstractActiveLock;->getOwner()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v3, v6, v7}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 73
    :cond_1
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/lock/AbstractActiveLock;->getToken()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 74
    const-string v3, "locktoken"

    sget-object v6, Lorg/apache/jackrabbit/webdav/lock/AbstractActiveLock;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v3, v6}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 75
    .local v1, "lToken":Lorg/w3c/dom/Element;
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/lock/AbstractActiveLock;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->hrefToXml(Ljava/lang/String;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 79
    .end local v1    # "lToken":Lorg/w3c/dom/Element;
    :cond_2
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/lock/AbstractActiveLock;->getLockroot()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 80
    const-string v3, "lockroot"

    sget-object v6, Lorg/apache/jackrabbit/webdav/lock/AbstractActiveLock;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v3, v6}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 81
    .local v2, "lroot":Lorg/w3c/dom/Element;
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/lock/AbstractActiveLock;->getLockroot()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->hrefToXml(Ljava/lang/String;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 83
    .end local v2    # "lroot":Lorg/w3c/dom/Element;
    :cond_3
    return-object v0
.end method
