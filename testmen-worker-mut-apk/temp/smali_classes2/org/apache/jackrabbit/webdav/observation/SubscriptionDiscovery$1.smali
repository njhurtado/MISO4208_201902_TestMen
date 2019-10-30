.class final Lorg/apache/jackrabbit/webdav/observation/SubscriptionDiscovery$1;
.super Ljava/lang/Object;
.source "SubscriptionDiscovery.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/observation/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/jackrabbit/webdav/observation/SubscriptionDiscovery;->createFromXml(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/observation/SubscriptionDiscovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$sb:Lorg/w3c/dom/Element;


# direct methods
.method constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/observation/SubscriptionDiscovery$1;->val$sb:Lorg/w3c/dom/Element;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eventsProvideNoLocalFlag()Z
    .locals 4

    .prologue
    .line 123
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/observation/SubscriptionDiscovery$1;->val$sb:Lorg/w3c/dom/Element;

    const-string v2, "eventswithlocalflag"

    sget-object v3, Lorg/apache/jackrabbit/webdav/observation/ObservationConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v1, v2, v3}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildText(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "t":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public eventsProvideNodeTypeInformation()Z
    .locals 4

    .prologue
    .line 118
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/observation/SubscriptionDiscovery$1;->val$sb:Lorg/w3c/dom/Element;

    const-string v2, "eventswithnodetypes"

    sget-object v3, Lorg/apache/jackrabbit/webdav/observation/ObservationConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v1, v2, v3}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildText(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "t":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public getSubscriptionId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 110
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/observation/SubscriptionDiscovery$1;->val$sb:Lorg/w3c/dom/Element;

    const-string v2, "subscriptionid"

    sget-object v3, Lorg/apache/jackrabbit/webdav/observation/ObservationConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v1, v2, v3}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 111
    .local v0, "ltEl":Lorg/w3c/dom/Element;
    if-eqz v0, :cond_0

    .line 112
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/observation/SubscriptionDiscovery$1;->val$sb:Lorg/w3c/dom/Element;

    const-string v2, "href"

    sget-object v3, Lorg/apache/jackrabbit/webdav/DavConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v1, v2, v3}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildText(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Ljava/lang/String;

    move-result-object v1

    .line 114
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 2
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/observation/SubscriptionDiscovery$1;->val$sb:Lorg/w3c/dom/Element;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    return-object v0
.end method
