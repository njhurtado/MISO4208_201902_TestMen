.class public Lorg/apache/jackrabbit/webdav/lock/LockInfo;
.super Ljava/lang/Object;
.source "LockInfo.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/DavConstants;
.implements Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;


# static fields
.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private isDeep:Z

.field private isRefreshLock:Z

.field private owner:Ljava/lang/String;

.field private scope:Lorg/apache/jackrabbit/webdav/lock/Scope;

.field private timeout:J

.field private type:Lorg/apache/jackrabbit/webdav/lock/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lorg/apache/jackrabbit/webdav/lock/LockInfo;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "timeout"    # J

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .end local p1    # "timeout":J
    :goto_0
    iput-wide p1, p0, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->timeout:J

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->isRefreshLock:Z

    .line 60
    return-void

    .line 58
    .restart local p1    # "timeout":J
    :cond_0
    const-wide/32 p1, 0x7fffffff

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/jackrabbit/webdav/lock/Scope;Lorg/apache/jackrabbit/webdav/lock/Type;Ljava/lang/String;JZ)V
    .locals 2
    .param p1, "scope"    # Lorg/apache/jackrabbit/webdav/lock/Scope;
    .param p2, "type"    # Lorg/apache/jackrabbit/webdav/lock/Type;
    .param p3, "owner"    # Ljava/lang/String;
    .param p4, "timeout"    # J
    .param p6, "isDeep"    # Z

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_1

    .end local p4    # "timeout":J
    :goto_0
    iput-wide p4, p0, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->timeout:J

    .line 73
    iput-boolean p6, p0, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->isDeep:Z

    .line 75
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 76
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->isRefreshLock:Z

    .line 82
    :goto_1
    return-void

    .line 72
    .restart local p4    # "timeout":J
    :cond_1
    const-wide/32 p4, 0x7fffffff

    goto :goto_0

    .line 78
    .end local p4    # "timeout":J
    :cond_2
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->scope:Lorg/apache/jackrabbit/webdav/lock/Scope;

    .line 79
    iput-object p2, p0, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->type:Lorg/apache/jackrabbit/webdav/lock/Type;

    .line 80
    iput-object p3, p0, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->owner:Ljava/lang/String;

    goto :goto_1
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;JZ)V
    .locals 6
    .param p1, "liElement"    # Lorg/w3c/dom/Element;
    .param p2, "timeout"    # J
    .param p4, "isDeep"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-lez v3, :cond_0

    .end local p2    # "timeout":J
    :goto_0
    iput-wide p2, p0, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->timeout:J

    .line 101
    iput-boolean p4, p0, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->isDeep:Z

    .line 103
    if-eqz p1, :cond_6

    .line 104
    const-string v3, "lockinfo"

    sget-object v4, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v3, v4}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->matches(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 105
    sget-object v3, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->log:Lorg/slf4j/Logger;

    const-string v4, "\'DAV:lockinfo\' element expected."

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 106
    new-instance v3, Lorg/apache/jackrabbit/webdav/DavException;

    const/16 v4, 0x190

    invoke-direct {v3, v4}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(I)V

    throw v3

    .line 100
    .restart local p2    # "timeout":J
    :cond_0
    const-wide/32 p2, 0x7fffffff

    goto :goto_0

    .line 109
    .end local p2    # "timeout":J
    :cond_1
    invoke-static {p1}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildren(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/xml/ElementIterator;

    move-result-object v2

    .line 110
    .local v2, "it":Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    :cond_2
    :goto_1
    invoke-virtual {v2}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 111
    invoke-virtual {v2}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->nextElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 112
    .local v0, "child":Lorg/w3c/dom/Element;
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "childName":Ljava/lang/String;
    const-string v3, "locktype"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 114
    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/lock/Type;->createFromXml(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/lock/Type;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->type:Lorg/apache/jackrabbit/webdav/lock/Type;

    goto :goto_1

    .line 115
    :cond_3
    const-string v3, "lockscope"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 116
    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/lock/Scope;->createFromXml(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/lock/Scope;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->scope:Lorg/apache/jackrabbit/webdav/lock/Scope;

    goto :goto_1

    .line 117
    :cond_4
    const-string v3, "owner"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 119
    const-string v3, "href"

    sget-object v4, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v3, v4}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildTextTrim(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->owner:Ljava/lang/String;

    .line 120
    iget-object v3, p0, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->owner:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 122
    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getTextTrim(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->owner:Ljava/lang/String;

    goto :goto_1

    .line 126
    .end local v0    # "child":Lorg/w3c/dom/Element;
    .end local v1    # "childName":Ljava/lang/String;
    :cond_5
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->isRefreshLock:Z

    .line 130
    .end local v2    # "it":Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    :goto_2
    return-void

    .line 128
    :cond_6
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->isRefreshLock:Z

    goto :goto_2
.end method


# virtual methods
.method public getOwner()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->owner:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Lorg/apache/jackrabbit/webdav/lock/Scope;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->scope:Lorg/apache/jackrabbit/webdav/lock/Scope;

    return-object v0
.end method

.method public getTimeout()J
    .locals 2

    .prologue
    .line 198
    iget-wide v0, p0, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->timeout:J

    return-wide v0
.end method

.method public getType()Lorg/apache/jackrabbit/webdav/lock/Type;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->type:Lorg/apache/jackrabbit/webdav/lock/Type;

    return-object v0
.end method

.method public isDeep()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->isDeep:Z

    return v0
.end method

.method public isRefreshLock()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->isRefreshLock:Z

    return v0
.end method

.method public setScope(Lorg/apache/jackrabbit/webdav/lock/Scope;)V
    .locals 0
    .param p1, "scope"    # Lorg/apache/jackrabbit/webdav/lock/Scope;

    .prologue
    .line 169
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->scope:Lorg/apache/jackrabbit/webdav/lock/Scope;

    .line 170
    return-void
.end method

.method public setType(Lorg/apache/jackrabbit/webdav/lock/Type;)V
    .locals 0
    .param p1, "type"    # Lorg/apache/jackrabbit/webdav/lock/Type;

    .prologue
    .line 149
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->type:Lorg/apache/jackrabbit/webdav/lock/Type;

    .line 150
    return-void
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 4
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 224
    iget-boolean v1, p0, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->isRefreshLock:Z

    if-eqz v1, :cond_1

    .line 225
    const/4 v0, 0x0

    .line 233
    :cond_0
    :goto_0
    return-object v0

    .line 227
    :cond_1
    const-string v1, "lockinfo"

    sget-object v2, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v1, v2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 228
    .local v0, "lockInfo":Lorg/w3c/dom/Element;
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->scope:Lorg/apache/jackrabbit/webdav/lock/Scope;

    invoke-virtual {v1, p1}, Lorg/apache/jackrabbit/webdav/lock/Scope;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 229
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->type:Lorg/apache/jackrabbit/webdav/lock/Type;

    invoke-virtual {v1, p1}, Lorg/apache/jackrabbit/webdav/lock/Type;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 230
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->owner:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 231
    const-string v1, "owner"

    sget-object v2, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    iget-object v3, p0, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->owner:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Ljava/lang/String;)Lorg/w3c/dom/Element;

    goto :goto_0
.end method
