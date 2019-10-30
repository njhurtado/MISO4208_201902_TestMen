.class public Lorg/apache/jackrabbit/webdav/observation/SubscriptionDiscovery;
.super Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;
.source "SubscriptionDiscovery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty",
        "<[",
        "Lorg/apache/jackrabbit/webdav/observation/Subscription;",
        ">;"
    }
.end annotation


# instance fields
.field private final subscriptions:[Lorg/apache/jackrabbit/webdav/observation/Subscription;


# direct methods
.method public constructor <init>(Lorg/apache/jackrabbit/webdav/observation/Subscription;)V
    .locals 3
    .param p1, "subscription"    # Lorg/apache/jackrabbit/webdav/observation/Subscription;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 60
    sget-object v0, Lorg/apache/jackrabbit/webdav/observation/ObservationConstants;->SUBSCRIPTIONDISCOVERY:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    invoke-direct {p0, v0, v2}, Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;-><init>(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;Z)V

    .line 61
    if-eqz p1, :cond_0

    .line 62
    new-array v0, v2, [Lorg/apache/jackrabbit/webdav/observation/Subscription;

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/observation/SubscriptionDiscovery;->subscriptions:[Lorg/apache/jackrabbit/webdav/observation/Subscription;

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    new-array v0, v1, [Lorg/apache/jackrabbit/webdav/observation/Subscription;

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/observation/SubscriptionDiscovery;->subscriptions:[Lorg/apache/jackrabbit/webdav/observation/Subscription;

    goto :goto_0
.end method

.method public constructor <init>([Lorg/apache/jackrabbit/webdav/observation/Subscription;)V
    .locals 2
    .param p1, "subscriptions"    # [Lorg/apache/jackrabbit/webdav/observation/Subscription;

    .prologue
    .line 45
    sget-object v0, Lorg/apache/jackrabbit/webdav/observation/ObservationConstants;->SUBSCRIPTIONDISCOVERY:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;-><init>(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;Z)V

    .line 46
    if-eqz p1, :cond_0

    .line 47
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/observation/SubscriptionDiscovery;->subscriptions:[Lorg/apache/jackrabbit/webdav/observation/Subscription;

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/jackrabbit/webdav/observation/Subscription;

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/observation/SubscriptionDiscovery;->subscriptions:[Lorg/apache/jackrabbit/webdav/observation/Subscription;

    goto :goto_0
.end method

.method public static createFromXml(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/observation/SubscriptionDiscovery;
    .locals 6
    .param p0, "sDiscoveryElement"    # Lorg/w3c/dom/Element;

    .prologue
    .line 96
    sget-object v4, Lorg/apache/jackrabbit/webdav/observation/ObservationConstants;->SUBSCRIPTIONDISCOVERY:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    invoke-virtual {v4}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/apache/jackrabbit/webdav/observation/ObservationConstants;->SUBSCRIPTIONDISCOVERY:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    invoke-virtual {v5}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->getNamespace()Lorg/apache/jackrabbit/webdav/xml/Namespace;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->matches(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 97
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "\'subscriptiondiscovery\' element expected."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 100
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v3, "subscriptions":Ljava/util/List;, "Ljava/util/List<Lorg/apache/jackrabbit/webdav/observation/Subscription;>;"
    const-string v4, "subscription"

    sget-object v5, Lorg/apache/jackrabbit/webdav/observation/ObservationConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p0, v4, v5}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/xml/ElementIterator;

    move-result-object v0

    .line 102
    .local v0, "it":Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    :goto_0
    invoke-virtual {v0}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 103
    invoke-virtual {v0}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->nextElement()Lorg/w3c/dom/Element;

    move-result-object v2

    .line 105
    .local v2, "sb":Lorg/w3c/dom/Element;
    new-instance v1, Lorg/apache/jackrabbit/webdav/observation/SubscriptionDiscovery$1;

    invoke-direct {v1, v2}, Lorg/apache/jackrabbit/webdav/observation/SubscriptionDiscovery$1;-><init>(Lorg/w3c/dom/Element;)V

    .line 134
    .local v1, "s":Lorg/apache/jackrabbit/webdav/observation/Subscription;
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 137
    .end local v1    # "s":Lorg/apache/jackrabbit/webdav/observation/Subscription;
    .end local v2    # "sb":Lorg/w3c/dom/Element;
    :cond_1
    new-instance v5, Lorg/apache/jackrabbit/webdav/observation/SubscriptionDiscovery;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lorg/apache/jackrabbit/webdav/observation/Subscription;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/apache/jackrabbit/webdav/observation/Subscription;

    invoke-direct {v5, v4}, Lorg/apache/jackrabbit/webdav/observation/SubscriptionDiscovery;-><init>([Lorg/apache/jackrabbit/webdav/observation/Subscription;)V

    return-object v5
.end method


# virtual methods
.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/observation/SubscriptionDiscovery;->getValue()[Lorg/apache/jackrabbit/webdav/observation/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public getValue()[Lorg/apache/jackrabbit/webdav/observation/Subscription;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/observation/SubscriptionDiscovery;->subscriptions:[Lorg/apache/jackrabbit/webdav/observation/Subscription;

    return-object v0
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 6
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 87
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/observation/SubscriptionDiscovery;->getName()Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v5

    invoke-virtual {v5, p1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 88
    .local v1, "elem":Lorg/w3c/dom/Element;
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/observation/SubscriptionDiscovery;->subscriptions:[Lorg/apache/jackrabbit/webdav/observation/Subscription;

    .local v0, "arr$":[Lorg/apache/jackrabbit/webdav/observation/Subscription;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 89
    .local v4, "subscription":Lorg/apache/jackrabbit/webdav/observation/Subscription;
    invoke-interface {v4, p1}, Lorg/apache/jackrabbit/webdav/observation/Subscription;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    .end local v4    # "subscription":Lorg/apache/jackrabbit/webdav/observation/Subscription;
    :cond_0
    return-object v1
.end method
