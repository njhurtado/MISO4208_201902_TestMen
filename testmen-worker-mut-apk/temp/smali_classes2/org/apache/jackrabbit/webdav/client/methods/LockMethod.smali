.class public Lorg/apache/jackrabbit/webdav/client/methods/LockMethod;
.super Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;
.source "LockMethod.java"


# static fields
.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private final isRefresh:Z

.field private lockDiscovery:Lorg/apache/jackrabbit/webdav/lock/LockDiscovery;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lorg/apache/jackrabbit/webdav/client/methods/LockMethod;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/client/methods/LockMethod;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J[Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "timeout"    # J
    .param p4, "lockTokens"    # [Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;-><init>(Ljava/lang/String;)V

    .line 97
    new-instance v1, Lorg/apache/jackrabbit/webdav/header/TimeoutHeader;

    invoke-direct {v1, p2, p3}, Lorg/apache/jackrabbit/webdav/header/TimeoutHeader;-><init>(J)V

    .line 98
    .local v1, "th":Lorg/apache/jackrabbit/webdav/header/TimeoutHeader;
    invoke-virtual {p0, v1}, Lorg/apache/jackrabbit/webdav/client/methods/LockMethod;->setRequestHeader(Lorg/apache/jackrabbit/webdav/header/Header;)V

    .line 99
    new-instance v0, Lorg/apache/jackrabbit/webdav/header/IfHeader;

    invoke-direct {v0, p4}, Lorg/apache/jackrabbit/webdav/header/IfHeader;-><init>([Ljava/lang/String;)V

    .line 100
    .local v0, "ifh":Lorg/apache/jackrabbit/webdav/header/IfHeader;
    invoke-virtual {p0, v0}, Lorg/apache/jackrabbit/webdav/client/methods/LockMethod;->setRequestHeader(Lorg/apache/jackrabbit/webdav/header/Header;)V

    .line 101
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/jackrabbit/webdav/client/methods/LockMethod;->isRefresh:Z

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/lock/LockInfo;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "lockInfo"    # Lorg/apache/jackrabbit/webdav/lock/LockInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;-><init>(Ljava/lang/String;)V

    .line 75
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->isRefreshLock()Z

    move-result v2

    if-nez v2, :cond_0

    .line 76
    new-instance v1, Lorg/apache/jackrabbit/webdav/header/TimeoutHeader;

    invoke-virtual {p2}, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->getTimeout()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/apache/jackrabbit/webdav/header/TimeoutHeader;-><init>(J)V

    .line 77
    .local v1, "th":Lorg/apache/jackrabbit/webdav/header/TimeoutHeader;
    invoke-virtual {p0, v1}, Lorg/apache/jackrabbit/webdav/client/methods/LockMethod;->setRequestHeader(Lorg/apache/jackrabbit/webdav/header/Header;)V

    .line 78
    new-instance v0, Lorg/apache/jackrabbit/webdav/header/DepthHeader;

    invoke-virtual {p2}, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->isDeep()Z

    move-result v2

    invoke-direct {v0, v2}, Lorg/apache/jackrabbit/webdav/header/DepthHeader;-><init>(Z)V

    .line 79
    .local v0, "dh":Lorg/apache/jackrabbit/webdav/header/DepthHeader;
    invoke-virtual {p0, v0}, Lorg/apache/jackrabbit/webdav/client/methods/LockMethod;->setRequestHeader(Lorg/apache/jackrabbit/webdav/header/Header;)V

    .line 80
    invoke-virtual {p0, p2}, Lorg/apache/jackrabbit/webdav/client/methods/LockMethod;->setRequestBody(Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;)V

    .line 81
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/jackrabbit/webdav/client/methods/LockMethod;->isRefresh:Z

    .line 85
    return-void

    .line 83
    .end local v0    # "dh":Lorg/apache/jackrabbit/webdav/header/DepthHeader;
    .end local v1    # "th":Lorg/apache/jackrabbit/webdav/header/TimeoutHeader;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot create a LOCK request without lock info. Use the constructor taking lock tokens in order to build a LOCK request for refresh."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/lock/Scope;Lorg/apache/jackrabbit/webdav/lock/Type;Ljava/lang/String;JZ)V
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "lockScope"    # Lorg/apache/jackrabbit/webdav/lock/Scope;
    .param p3, "lockType"    # Lorg/apache/jackrabbit/webdav/lock/Type;
    .param p4, "owner"    # Ljava/lang/String;
    .param p5, "timeout"    # J
    .param p7, "isDeep"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Lorg/apache/jackrabbit/webdav/lock/LockInfo;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p5

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/apache/jackrabbit/webdav/lock/LockInfo;-><init>(Lorg/apache/jackrabbit/webdav/lock/Scope;Lorg/apache/jackrabbit/webdav/lock/Type;Ljava/lang/String;JZ)V

    invoke-direct {p0, p1, v0}, Lorg/apache/jackrabbit/webdav/client/methods/LockMethod;-><init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/lock/LockInfo;)V

    .line 65
    return-void
.end method

.method private buildDiscoveryFromRoot(Lorg/w3c/dom/Element;)Z
    .locals 3
    .param p1, "root"    # Lorg/w3c/dom/Element;

    .prologue
    .line 215
    const-string v1, "prop"

    sget-object v2, Lorg/apache/jackrabbit/webdav/client/methods/LockMethod;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v1, v2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->matches(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "lockdiscovery"

    sget-object v2, Lorg/apache/jackrabbit/webdav/client/methods/LockMethod;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v1, v2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->hasChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    const-string v1, "lockdiscovery"

    sget-object v2, Lorg/apache/jackrabbit/webdav/client/methods/LockMethod;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v1, v2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 217
    .local v0, "lde":Lorg/w3c/dom/Element;
    const-string v1, "activelock"

    sget-object v2, Lorg/apache/jackrabbit/webdav/client/methods/LockMethod;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1, v2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->hasChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/lock/LockDiscovery;->createFromXml(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/lock/LockDiscovery;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/jackrabbit/webdav/client/methods/LockMethod;->lockDiscovery:Lorg/apache/jackrabbit/webdav/lock/LockDiscovery;

    .line 219
    const/4 v1, 0x1

    .line 226
    .end local v0    # "lde":Lorg/w3c/dom/Element;
    :goto_0
    return v1

    .line 221
    .restart local v0    # "lde":Lorg/w3c/dom/Element;
    :cond_0
    sget-object v1, Lorg/apache/jackrabbit/webdav/client/methods/LockMethod;->log:Lorg/slf4j/Logger;

    const-string v2, "The DAV:lockdiscovery must contain a least a single DAV:activelock in response to a successful LOCK request."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 226
    .end local v0    # "lde":Lorg/w3c/dom/Element;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 224
    :cond_1
    sget-object v1, Lorg/apache/jackrabbit/webdav/client/methods/LockMethod;->log:Lorg/slf4j/Logger;

    const-string v2, "Missing DAV:prop response body in LOCK method."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public getLockToken()Ljava/lang/String;
    .locals 4

    .prologue
    .line 133
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/LockMethod;->checkUsed()V

    .line 134
    const-string v2, "Lock-Token"

    invoke-virtual {p0, v2}, Lorg/apache/jackrabbit/webdav/client/methods/LockMethod;->getResponseHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v1

    .line 135
    .local v1, "ltHeader":Lorg/apache/commons/httpclient/Header;
    if-eqz v1, :cond_0

    .line 136
    new-instance v0, Lorg/apache/jackrabbit/webdav/header/CodedUrlHeader;

    const-string v2, "Lock-Token"

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/jackrabbit/webdav/header/CodedUrlHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .local v0, "cuh":Lorg/apache/jackrabbit/webdav/header/CodedUrlHeader;
    invoke-virtual {v0}, Lorg/apache/jackrabbit/webdav/header/CodedUrlHeader;->getCodedUrl()Ljava/lang/String;

    move-result-object v2

    .line 141
    .end local v0    # "cuh":Lorg/apache/jackrabbit/webdav/header/CodedUrlHeader;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    const-string v0, "LOCK"

    return-object v0
.end method

.method public getResponseAsLockDiscovery()Lorg/apache/jackrabbit/webdav/lock/LockDiscovery;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/LockMethod;->checkUsed()V

    .line 116
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/client/methods/LockMethod;->lockDiscovery:Lorg/apache/jackrabbit/webdav/lock/LockDiscovery;

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/client/methods/LockMethod;->lockDiscovery:Lorg/apache/jackrabbit/webdav/lock/LockDiscovery;

    return-object v1

    .line 119
    :cond_0
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/LockMethod;->getResponseException()Lorg/apache/jackrabbit/webdav/DavException;

    move-result-object v0

    .line 120
    .local v0, "dx":Lorg/apache/jackrabbit/webdav/DavException;
    if-eqz v0, :cond_1

    .line 121
    throw v0

    .line 123
    :cond_1
    new-instance v1, Lorg/apache/jackrabbit/webdav/DavException;

    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/LockMethod;->getStatusCode()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/LockMethod;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " resulted with unexpected status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/LockMethod;->getStatusLine()Lorg/apache/commons/httpclient/StatusLine;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method protected isSuccess(I)Z
    .locals 1
    .param p1, "statusCode"    # I

    .prologue
    .line 174
    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc9

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected processResponseBody(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 4
    .param p1, "httpState"    # Lorg/apache/commons/httpclient/HttpState;
    .param p2, "httpConnection"    # Lorg/apache/commons/httpclient/HttpConnection;

    .prologue
    .line 194
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/LockMethod;->getSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/LockMethod;->getRootElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/jackrabbit/webdav/client/methods/LockMethod;->buildDiscoveryFromRoot(Lorg/w3c/dom/Element;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/jackrabbit/webdav/client/methods/LockMethod;->setSuccess(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lorg/apache/jackrabbit/webdav/client/methods/LockMethod;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while parsing multistatus response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 199
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/jackrabbit/webdav/client/methods/LockMethod;->setSuccess(Z)V

    goto :goto_0
.end method

.method public succeeded()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 161
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/LockMethod;->checkUsed()V

    .line 162
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/LockMethod;->getLockToken()Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "lt":Ljava/lang/String;
    iget-boolean v4, p0, Lorg/apache/jackrabbit/webdav/client/methods/LockMethod;->isRefresh:Z

    if-eqz v4, :cond_1

    if-nez v1, :cond_0

    move v0, v2

    .line 164
    .local v0, "containsRequiredHeader":Z
    :goto_0
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/LockMethod;->getSuccess()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    :goto_1
    return v2

    .end local v0    # "containsRequiredHeader":Z
    :cond_0
    move v0, v3

    .line 163
    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0

    .restart local v0    # "containsRequiredHeader":Z
    :cond_3
    move v2, v3

    .line 164
    goto :goto_1
.end method
