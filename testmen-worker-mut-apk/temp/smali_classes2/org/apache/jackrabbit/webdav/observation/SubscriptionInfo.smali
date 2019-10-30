.class public Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;
.super Ljava/lang/Object;
.source "SubscriptionInfo.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/observation/ObservationConstants;
.implements Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;


# static fields
.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private final eventTypes:[Lorg/apache/jackrabbit/webdav/observation/EventType;

.field private final filters:[Lorg/apache/jackrabbit/webdav/observation/Filter;

.field private final isDeep:Z

.field private final noLocal:Z

.field private final timeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;JZ)V
    .locals 8
    .param p1, "reqInfo"    # Lorg/w3c/dom/Element;
    .param p2, "timeout"    # J
    .param p4, "isDeep"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x190

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const-string v4, "subscriptioninfo"

    sget-object v5, Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v4, v5}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->matches(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 117
    sget-object v4, Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;->log:Lorg/slf4j/Logger;

    const-string v5, "Element with name \'subscriptioninfo\' expected"

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 118
    new-instance v4, Lorg/apache/jackrabbit/webdav/DavException;

    invoke-direct {v4, v6}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(I)V

    throw v4

    .line 120
    :cond_0
    const-string v4, "eventtype"

    sget-object v5, Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v4, v5}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 121
    .local v0, "el":Lorg/w3c/dom/Element;
    if-eqz v0, :cond_1

    .line 122
    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/observation/DefaultEventType;->createFromXml(Lorg/w3c/dom/Element;)[Lorg/apache/jackrabbit/webdav/observation/EventType;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;->eventTypes:[Lorg/apache/jackrabbit/webdav/observation/EventType;

    .line 123
    iget-object v4, p0, Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;->eventTypes:[Lorg/apache/jackrabbit/webdav/observation/EventType;

    array-length v4, v4

    if-nez v4, :cond_2

    .line 124
    sget-object v4, Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;->log:Lorg/slf4j/Logger;

    const-string v5, "\'subscriptioninfo\' must at least indicate a single, valid event type."

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 125
    new-instance v4, Lorg/apache/jackrabbit/webdav/DavException;

    invoke-direct {v4, v6}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(I)V

    throw v4

    .line 128
    :cond_1
    sget-object v4, Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;->log:Lorg/slf4j/Logger;

    const-string v5, "\'subscriptioninfo\' must contain an \'eventtype\' child element."

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 129
    new-instance v4, Lorg/apache/jackrabbit/webdav/DavException;

    invoke-direct {v4, v6}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(I)V

    throw v4

    .line 132
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v2, "filters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/jackrabbit/webdav/observation/Filter;>;"
    const-string v4, "filter"

    sget-object v5, Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v4, v5}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_3

    .line 135
    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildren(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/xml/ElementIterator;

    move-result-object v3

    .line 136
    .local v3, "it":Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    :goto_0
    invoke-virtual {v3}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 137
    new-instance v1, Lorg/apache/jackrabbit/webdav/observation/Filter;

    invoke-virtual {v3}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->nextElement()Lorg/w3c/dom/Element;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/apache/jackrabbit/webdav/observation/Filter;-><init>(Lorg/w3c/dom/Element;)V

    .line 138
    .local v1, "f":Lorg/apache/jackrabbit/webdav/observation/Filter;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 141
    .end local v1    # "f":Lorg/apache/jackrabbit/webdav/observation/Filter;
    .end local v3    # "it":Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lorg/apache/jackrabbit/webdav/observation/Filter;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/apache/jackrabbit/webdav/observation/Filter;

    iput-object v4, p0, Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;->filters:[Lorg/apache/jackrabbit/webdav/observation/Filter;

    .line 143
    const-string v4, "nolocal"

    sget-object v5, Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v4, v5}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->hasChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v4

    iput-boolean v4, p0, Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;->noLocal:Z

    .line 144
    iput-boolean p4, p0, Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;->isDeep:Z

    .line 145
    iput-wide p2, p0, Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;->timeout:J

    .line 146
    return-void
.end method

.method public constructor <init>([Lorg/apache/jackrabbit/webdav/observation/EventType;ZJ)V
    .locals 9
    .param p1, "eventTypes"    # [Lorg/apache/jackrabbit/webdav/observation/EventType;
    .param p2, "isDeep"    # Z
    .param p3, "timeout"    # J

    .prologue
    .line 72
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;-><init>([Lorg/apache/jackrabbit/webdav/observation/EventType;[Lorg/apache/jackrabbit/webdav/observation/Filter;ZZJ)V

    .line 73
    return-void
.end method

.method public constructor <init>([Lorg/apache/jackrabbit/webdav/observation/EventType;[Lorg/apache/jackrabbit/webdav/observation/Filter;ZZJ)V
    .locals 3
    .param p1, "eventTypes"    # [Lorg/apache/jackrabbit/webdav/observation/EventType;
    .param p2, "filters"    # [Lorg/apache/jackrabbit/webdav/observation/Filter;
    .param p3, "noLocal"    # Z
    .param p4, "isDeep"    # Z
    .param p5, "timeout"    # J

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'subscriptioninfo\' must at least indicate a single event type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_1
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;->eventTypes:[Lorg/apache/jackrabbit/webdav/observation/EventType;

    .line 90
    iput-boolean p3, p0, Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;->noLocal:Z

    .line 92
    if-eqz p2, :cond_2

    .line 93
    iput-object p2, p0, Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;->filters:[Lorg/apache/jackrabbit/webdav/observation/Filter;

    .line 98
    :goto_0
    iput-boolean p4, p0, Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;->isDeep:Z

    .line 99
    iput-wide p5, p0, Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;->timeout:J

    .line 100
    return-void

    .line 95
    :cond_2
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/jackrabbit/webdav/observation/Filter;

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;->filters:[Lorg/apache/jackrabbit/webdav/observation/Filter;

    goto :goto_0
.end method


# virtual methods
.method public getEventTypes()[Lorg/apache/jackrabbit/webdav/observation/EventType;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;->eventTypes:[Lorg/apache/jackrabbit/webdav/observation/EventType;

    return-object v0
.end method

.method public getFilters()[Lorg/apache/jackrabbit/webdav/observation/Filter;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;->filters:[Lorg/apache/jackrabbit/webdav/observation/Filter;

    return-object v0
.end method

.method public getFilters(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)[Lorg/apache/jackrabbit/webdav/observation/Filter;
    .locals 6
    .param p1, "localName"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .prologue
    .line 177
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v3, "l":Ljava/util/List;, "Ljava/util/List<Lorg/apache/jackrabbit/webdav/observation/Filter;>;"
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;->filters:[Lorg/apache/jackrabbit/webdav/observation/Filter;

    .local v0, "arr$":[Lorg/apache/jackrabbit/webdav/observation/Filter;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v0, v2

    .line 179
    .local v1, "filter":Lorg/apache/jackrabbit/webdav/observation/Filter;
    invoke-virtual {v1, p1, p2}, Lorg/apache/jackrabbit/webdav/observation/Filter;->isMatchingFilter(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 180
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 183
    .end local v1    # "filter":Lorg/apache/jackrabbit/webdav/observation/Filter;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lorg/apache/jackrabbit/webdav/observation/Filter;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/apache/jackrabbit/webdav/observation/Filter;

    return-object v5
.end method

.method public getTimeOut()J
    .locals 2

    .prologue
    .line 213
    iget-wide v0, p0, Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;->timeout:J

    return-wide v0
.end method

.method public isDeep()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;->isDeep:Z

    return v0
.end method

.method public isNoLocal()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;->noLocal:Z

    return v0
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 10
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 224
    const-string v8, "subscriptioninfo"

    sget-object v9, Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v8, v9}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v7

    .line 225
    .local v7, "subscrInfo":Lorg/w3c/dom/Element;
    const-string v8, "eventtype"

    sget-object v9, Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v7, v8, v9}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 226
    .local v2, "eventType":Lorg/w3c/dom/Element;
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;->eventTypes:[Lorg/apache/jackrabbit/webdav/observation/EventType;

    .local v0, "arr$":[Lorg/apache/jackrabbit/webdav/observation/EventType;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v1, v0, v5

    .line 227
    .local v1, "et":Lorg/apache/jackrabbit/webdav/observation/EventType;
    invoke-interface {v1, p1}, Lorg/apache/jackrabbit/webdav/observation/EventType;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v2, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 226
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 230
    .end local v1    # "et":Lorg/apache/jackrabbit/webdav/observation/EventType;
    :cond_0
    iget-object v8, p0, Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;->filters:[Lorg/apache/jackrabbit/webdav/observation/Filter;

    array-length v8, v8

    if-lez v8, :cond_1

    .line 231
    const-string v8, "filter"

    sget-object v9, Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v7, v8, v9}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 232
    .local v4, "filter":Lorg/w3c/dom/Element;
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;->filters:[Lorg/apache/jackrabbit/webdav/observation/Filter;

    .local v0, "arr$":[Lorg/apache/jackrabbit/webdav/observation/Filter;
    array-length v6, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_1

    aget-object v3, v0, v5

    .line 233
    .local v3, "f":Lorg/apache/jackrabbit/webdav/observation/Filter;
    invoke-virtual {v3, p1}, Lorg/apache/jackrabbit/webdav/observation/Filter;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v4, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 232
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 237
    .end local v0    # "arr$":[Lorg/apache/jackrabbit/webdav/observation/Filter;
    .end local v3    # "f":Lorg/apache/jackrabbit/webdav/observation/Filter;
    .end local v4    # "filter":Lorg/w3c/dom/Element;
    :cond_1
    iget-boolean v8, p0, Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;->noLocal:Z

    if-eqz v8, :cond_2

    .line 238
    const-string v8, "nolocal"

    sget-object v9, Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v7, v8, v9}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    .line 240
    :cond_2
    return-object v7
.end method
