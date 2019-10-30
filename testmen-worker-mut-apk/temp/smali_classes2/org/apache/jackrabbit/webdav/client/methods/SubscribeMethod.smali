.class public Lorg/apache/jackrabbit/webdav/client/methods/SubscribeMethod;
.super Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;
.source "SubscribeMethod.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/observation/ObservationConstants;


# static fields
.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private subscriptionDiscovery:Lorg/apache/jackrabbit/webdav/observation/SubscriptionDiscovery;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lorg/apache/jackrabbit/webdav/client/methods/SubscribeMethod;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/client/methods/SubscribeMethod;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "subscriptionInfo"    # Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/jackrabbit/webdav/client/methods/SubscribeMethod;-><init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;Ljava/lang/String;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "subscriptionInfo"    # Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;
    .param p3, "subscriptionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;-><init>(Ljava/lang/String;)V

    .line 79
    if-nez p2, :cond_0

    .line 80
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "SubscriptionInfo must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :cond_0
    if-eqz p3, :cond_1

    .line 84
    new-instance v2, Lorg/apache/jackrabbit/webdav/header/CodedUrlHeader;

    const-string v3, "SubscriptionId"

    invoke-direct {v2, v3, p3}, Lorg/apache/jackrabbit/webdav/header/CodedUrlHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/apache/jackrabbit/webdav/client/methods/SubscribeMethod;->setRequestHeader(Lorg/apache/jackrabbit/webdav/header/Header;)V

    .line 87
    :cond_1
    invoke-virtual {p2}, Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;->getTimeOut()J

    move-result-wide v0

    .line 88
    .local v0, "to":J
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 89
    new-instance v2, Lorg/apache/jackrabbit/webdav/header/TimeoutHeader;

    invoke-virtual {p2}, Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;->getTimeOut()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lorg/apache/jackrabbit/webdav/header/TimeoutHeader;-><init>(J)V

    invoke-virtual {p0, v2}, Lorg/apache/jackrabbit/webdav/client/methods/SubscribeMethod;->setRequestHeader(Lorg/apache/jackrabbit/webdav/header/Header;)V

    .line 92
    :cond_2
    new-instance v2, Lorg/apache/jackrabbit/webdav/header/DepthHeader;

    invoke-virtual {p2}, Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;->isDeep()Z

    move-result v3

    invoke-direct {v2, v3}, Lorg/apache/jackrabbit/webdav/header/DepthHeader;-><init>(Z)V

    invoke-virtual {p0, v2}, Lorg/apache/jackrabbit/webdav/client/methods/SubscribeMethod;->setRequestHeader(Lorg/apache/jackrabbit/webdav/header/Header;)V

    .line 93
    invoke-virtual {p0, p2}, Lorg/apache/jackrabbit/webdav/client/methods/SubscribeMethod;->setRequestBody(Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;)V

    .line 94
    return-void
.end method

.method private buildDiscoveryFromRoot(Lorg/w3c/dom/Element;)Z
    .locals 4
    .param p1, "root"    # Lorg/w3c/dom/Element;

    .prologue
    .line 165
    const-string v2, "prop"

    sget-object v3, Lorg/apache/jackrabbit/webdav/DavConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v2, v3}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->matches(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lorg/apache/jackrabbit/webdav/client/methods/SubscribeMethod;->SUBSCRIPTIONDISCOVERY:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    invoke-virtual {v2}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/jackrabbit/webdav/client/methods/SubscribeMethod;->SUBSCRIPTIONDISCOVERY:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    invoke-virtual {v3}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->getNamespace()Lorg/apache/jackrabbit/webdav/xml/Namespace;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->hasChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    sget-object v2, Lorg/apache/jackrabbit/webdav/client/methods/SubscribeMethod;->SUBSCRIPTIONDISCOVERY:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    invoke-virtual {v2}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/jackrabbit/webdav/client/methods/SubscribeMethod;->SUBSCRIPTIONDISCOVERY:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    invoke-virtual {v3}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->getNamespace()Lorg/apache/jackrabbit/webdav/xml/Namespace;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 169
    .local v1, "sdElem":Lorg/w3c/dom/Element;
    invoke-static {v1}, Lorg/apache/jackrabbit/webdav/observation/SubscriptionDiscovery;->createFromXml(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/observation/SubscriptionDiscovery;

    move-result-object v0

    .line 170
    .local v0, "sd":Lorg/apache/jackrabbit/webdav/observation/SubscriptionDiscovery;
    invoke-virtual {v0}, Lorg/apache/jackrabbit/webdav/observation/SubscriptionDiscovery;->getValue()[Lorg/apache/jackrabbit/webdav/observation/Subscription;

    move-result-object v2

    check-cast v2, [Lorg/apache/jackrabbit/webdav/observation/Subscription;

    array-length v2, v2

    if-lez v2, :cond_0

    .line 171
    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/client/methods/SubscribeMethod;->subscriptionDiscovery:Lorg/apache/jackrabbit/webdav/observation/SubscriptionDiscovery;

    .line 172
    const/4 v2, 0x1

    .line 179
    .end local v0    # "sd":Lorg/apache/jackrabbit/webdav/observation/SubscriptionDiscovery;
    .end local v1    # "sdElem":Lorg/w3c/dom/Element;
    :goto_0
    return v2

    .line 174
    .restart local v0    # "sd":Lorg/apache/jackrabbit/webdav/observation/SubscriptionDiscovery;
    .restart local v1    # "sdElem":Lorg/w3c/dom/Element;
    :cond_0
    sget-object v2, Lorg/apache/jackrabbit/webdav/client/methods/SubscribeMethod;->log:Lorg/slf4j/Logger;

    const-string v3, "Missing \'subscription\' elements in SUBSCRIBE response body. At least a single subscription must be present if SUBSCRIBE was successful."

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 179
    .end local v0    # "sd":Lorg/apache/jackrabbit/webdav/observation/SubscriptionDiscovery;
    .end local v1    # "sdElem":Lorg/w3c/dom/Element;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 177
    :cond_1
    sget-object v2, Lorg/apache/jackrabbit/webdav/client/methods/SubscribeMethod;->log:Lorg/slf4j/Logger;

    const-string v3, "Missing DAV:prop response body in SUBSCRIBE method."

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    const-string v0, "SUBSCRIBE"

    return-object v0
.end method

.method public getResponseAsSubscriptionDiscovery()Lorg/apache/jackrabbit/webdav/observation/SubscriptionDiscovery;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/SubscribeMethod;->checkUsed()V

    .line 98
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/client/methods/SubscribeMethod;->subscriptionDiscovery:Lorg/apache/jackrabbit/webdav/observation/SubscriptionDiscovery;

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/client/methods/SubscribeMethod;->subscriptionDiscovery:Lorg/apache/jackrabbit/webdav/observation/SubscriptionDiscovery;

    return-object v1

    .line 101
    :cond_0
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/SubscribeMethod;->getResponseException()Lorg/apache/jackrabbit/webdav/DavException;

    move-result-object v0

    .line 102
    .local v0, "dx":Lorg/apache/jackrabbit/webdav/DavException;
    if-eqz v0, :cond_1

    .line 103
    throw v0

    .line 105
    :cond_1
    new-instance v1, Lorg/apache/jackrabbit/webdav/DavException;

    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/SubscribeMethod;->getStatusCode()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/SubscribeMethod;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " resulted with unexpected status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/SubscribeMethod;->getStatusLine()Lorg/apache/commons/httpclient/StatusLine;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public getSubscriptionId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 111
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/SubscribeMethod;->checkUsed()V

    .line 112
    const-string v2, "SubscriptionId"

    invoke-virtual {p0, v2}, Lorg/apache/jackrabbit/webdav/client/methods/SubscribeMethod;->getResponseHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v1

    .line 113
    .local v1, "sbHeader":Lorg/apache/commons/httpclient/Header;
    if-eqz v1, :cond_0

    .line 114
    new-instance v0, Lorg/apache/jackrabbit/webdav/header/CodedUrlHeader;

    const-string v2, "SubscriptionId"

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/jackrabbit/webdav/header/CodedUrlHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .local v0, "cuh":Lorg/apache/jackrabbit/webdav/header/CodedUrlHeader;
    invoke-virtual {v0}, Lorg/apache/jackrabbit/webdav/header/CodedUrlHeader;->getCodedUrl()Ljava/lang/String;

    move-result-object v2

    .line 117
    .end local v0    # "cuh":Lorg/apache/jackrabbit/webdav/header/CodedUrlHeader;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected isSuccess(I)Z
    .locals 1
    .param p1, "statusCode"    # I

    .prologue
    .line 129
    const/16 v0, 0xc8

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected processResponseBody(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 4
    .param p1, "httpState"    # Lorg/apache/commons/httpclient/HttpState;
    .param p2, "httpConnection"    # Lorg/apache/commons/httpclient/HttpConnection;

    .prologue
    .line 148
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/SubscribeMethod;->getSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/SubscribeMethod;->getRootElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/jackrabbit/webdav/client/methods/SubscribeMethod;->buildDiscoveryFromRoot(Lorg/w3c/dom/Element;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/jackrabbit/webdav/client/methods/SubscribeMethod;->setSuccess(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lorg/apache/jackrabbit/webdav/client/methods/SubscribeMethod;->log:Lorg/slf4j/Logger;

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

    .line 153
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/jackrabbit/webdav/client/methods/SubscribeMethod;->setSuccess(Z)V

    goto :goto_0
.end method
