.class public Lorg/apache/jackrabbit/webdav/client/methods/PollMethod;
.super Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;
.source "PollMethod.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/observation/ObservationConstants;


# static fields
.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private eventDiscovery:Lorg/apache/jackrabbit/webdav/observation/EventDiscovery;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lorg/apache/jackrabbit/webdav/client/methods/PollMethod;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/client/methods/PollMethod;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "subscriptionId"    # Ljava/lang/String;

    .prologue
    .line 47
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/jackrabbit/webdav/client/methods/PollMethod;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "subscriptionId"    # Ljava/lang/String;
    .param p3, "timeout"    # J

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;-><init>(Ljava/lang/String;)V

    .line 52
    const-string v0, "SubscriptionId"

    invoke-virtual {p0, v0, p2}, Lorg/apache/jackrabbit/webdav/client/methods/PollMethod;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    .line 54
    new-instance v0, Lorg/apache/jackrabbit/webdav/header/PollTimeoutHeader;

    invoke-direct {v0, p3, p4}, Lorg/apache/jackrabbit/webdav/header/PollTimeoutHeader;-><init>(J)V

    invoke-virtual {p0, v0}, Lorg/apache/jackrabbit/webdav/client/methods/PollMethod;->setRequestHeader(Lorg/apache/jackrabbit/webdav/header/Header;)V

    .line 56
    :cond_0
    return-void
.end method

.method private buildDiscoveryFromRoot(Lorg/w3c/dom/Element;)Z
    .locals 5
    .param p1, "root"    # Lorg/w3c/dom/Element;

    .prologue
    .line 116
    const-string v3, "eventdiscovery"

    sget-object v4, Lorg/apache/jackrabbit/webdav/observation/ObservationConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v3, v4}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->matches(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 117
    new-instance v3, Lorg/apache/jackrabbit/webdav/observation/EventDiscovery;

    invoke-direct {v3}, Lorg/apache/jackrabbit/webdav/observation/EventDiscovery;-><init>()V

    iput-object v3, p0, Lorg/apache/jackrabbit/webdav/client/methods/PollMethod;->eventDiscovery:Lorg/apache/jackrabbit/webdav/observation/EventDiscovery;

    .line 118
    const-string v3, "eventbundle"

    sget-object v4, Lorg/apache/jackrabbit/webdav/observation/ObservationConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v3, v4}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/xml/ElementIterator;

    move-result-object v2

    .line 119
    .local v2, "it":Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    :goto_0
    invoke-virtual {v2}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    invoke-virtual {v2}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->nextElement()Lorg/w3c/dom/Element;

    move-result-object v1

    .line 121
    .local v1, "ebElement":Lorg/w3c/dom/Element;
    new-instance v0, Lorg/apache/jackrabbit/webdav/client/methods/PollMethod$1;

    invoke-direct {v0, p0, v1}, Lorg/apache/jackrabbit/webdav/client/methods/PollMethod$1;-><init>(Lorg/apache/jackrabbit/webdav/client/methods/PollMethod;Lorg/w3c/dom/Element;)V

    .line 126
    .local v0, "eb":Lorg/apache/jackrabbit/webdav/observation/EventBundle;
    iget-object v3, p0, Lorg/apache/jackrabbit/webdav/client/methods/PollMethod;->eventDiscovery:Lorg/apache/jackrabbit/webdav/observation/EventDiscovery;

    invoke-virtual {v3, v0}, Lorg/apache/jackrabbit/webdav/observation/EventDiscovery;->addEventBundle(Lorg/apache/jackrabbit/webdav/observation/EventBundle;)V

    goto :goto_0

    .line 128
    .end local v0    # "eb":Lorg/apache/jackrabbit/webdav/observation/EventBundle;
    .end local v1    # "ebElement":Lorg/w3c/dom/Element;
    :cond_0
    const/4 v3, 0x1

    .line 132
    .end local v2    # "it":Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    :goto_1
    return v3

    .line 130
    :cond_1
    sget-object v3, Lorg/apache/jackrabbit/webdav/client/methods/PollMethod;->log:Lorg/slf4j/Logger;

    const-string v4, "Missing \'eventdiscovery\' response body in POLL method."

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 132
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-string v0, "POLL"

    return-object v0
.end method

.method public getResponseAsEventDiscovery()Lorg/apache/jackrabbit/webdav/observation/EventDiscovery;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/PollMethod;->checkUsed()V

    .line 60
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/client/methods/PollMethod;->eventDiscovery:Lorg/apache/jackrabbit/webdav/observation/EventDiscovery;

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/client/methods/PollMethod;->eventDiscovery:Lorg/apache/jackrabbit/webdav/observation/EventDiscovery;

    return-object v1

    .line 63
    :cond_0
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/PollMethod;->getResponseException()Lorg/apache/jackrabbit/webdav/DavException;

    move-result-object v0

    .line 64
    .local v0, "dx":Lorg/apache/jackrabbit/webdav/DavException;
    if-eqz v0, :cond_1

    .line 65
    throw v0

    .line 67
    :cond_1
    new-instance v1, Lorg/apache/jackrabbit/webdav/DavException;

    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/PollMethod;->getStatusCode()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/PollMethod;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " resulted with unexpected status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/PollMethod;->getStatusLine()Lorg/apache/commons/httpclient/StatusLine;

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
    .line 80
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
    .line 99
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/PollMethod;->getSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/PollMethod;->getRootElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/jackrabbit/webdav/client/methods/PollMethod;->buildDiscoveryFromRoot(Lorg/w3c/dom/Element;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/jackrabbit/webdav/client/methods/PollMethod;->setSuccess(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lorg/apache/jackrabbit/webdav/client/methods/PollMethod;->log:Lorg/slf4j/Logger;

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

    .line 104
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/jackrabbit/webdav/client/methods/PollMethod;->setSuccess(Z)V

    goto :goto_0
.end method
