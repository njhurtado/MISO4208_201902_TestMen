.class public Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;
.super Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;
.source "PropPatchMethod.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/DavConstants;


# static fields
.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private final propertyNames:Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

.field private responseException:Lorg/apache/jackrabbit/webdav/DavException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 12
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/jackrabbit/webdav/property/PropEntry;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    .local p2, "changeList":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/jackrabbit/webdav/property/PropEntry;>;"
    invoke-direct {p0, p1}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;-><init>(Ljava/lang/String;)V

    .line 51
    new-instance v10, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    invoke-direct {v10}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;-><init>()V

    iput-object v10, p0, Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;->propertyNames:Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    .line 64
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 65
    :cond_0
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "PROPPATCH cannot be executed without properties to be set or removed."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 68
    :cond_1
    :try_start_0
    invoke-static {}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 69
    .local v1, "document":Lorg/w3c/dom/Document;
    const-string v10, "propertyupdate"

    sget-object v11, Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v1, v10, v11}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v7

    .line 71
    .local v7, "propUpdateElement":Lorg/w3c/dom/Element;
    const/4 v6, 0x0

    .line 72
    .local v6, "propElement":Lorg/w3c/dom/Element;
    const/4 v5, 0x0

    .line 73
    .local v5, "isSet":Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 74
    .local v3, "entry":Ljava/lang/Object;
    instance-of v10, v3, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    if-eqz v10, :cond_4

    .line 76
    move-object v0, v3

    check-cast v0, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-object v8, v0

    .line 77
    .local v8, "removeName":Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    if-eqz v6, :cond_2

    if-eqz v5, :cond_3

    .line 78
    :cond_2
    const/4 v5, 0x0

    .line 79
    invoke-direct {p0, v7, v5}, Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;->getPropElement(Lorg/w3c/dom/Element;Z)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 81
    :cond_3
    invoke-virtual {v8, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v10

    invoke-interface {v6, v10}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 82
    iget-object v10, p0, Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;->propertyNames:Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    invoke-virtual {v10, v8}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->add(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Z
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    .end local v1    # "document":Lorg/w3c/dom/Document;
    .end local v3    # "entry":Ljava/lang/Object;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "isSet":Z
    .end local v6    # "propElement":Lorg/w3c/dom/Element;
    .end local v7    # "propUpdateElement":Lorg/w3c/dom/Element;
    .end local v8    # "removeName":Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    :catch_0
    move-exception v2

    .line 98
    .local v2, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v10, Ljava/io/IOException;

    invoke-virtual {v2}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 83
    .end local v2    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v1    # "document":Lorg/w3c/dom/Document;
    .restart local v3    # "entry":Ljava/lang/Object;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "isSet":Z
    .restart local v6    # "propElement":Lorg/w3c/dom/Element;
    .restart local v7    # "propUpdateElement":Lorg/w3c/dom/Element;
    :cond_4
    :try_start_1
    instance-of v10, v3, Lorg/apache/jackrabbit/webdav/property/DavProperty;

    if-eqz v10, :cond_7

    .line 85
    move-object v0, v3

    check-cast v0, Lorg/apache/jackrabbit/webdav/property/DavProperty;

    move-object v9, v0

    .line 86
    .local v9, "setProperty":Lorg/apache/jackrabbit/webdav/property/DavProperty;, "Lorg/apache/jackrabbit/webdav/property/DavProperty<*>;"
    if-eqz v6, :cond_5

    if-nez v5, :cond_6

    .line 87
    :cond_5
    const/4 v5, 0x1

    .line 88
    invoke-direct {p0, v7, v5}, Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;->getPropElement(Lorg/w3c/dom/Element;Z)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 90
    :cond_6
    invoke-interface {v9, v1}, Lorg/apache/jackrabbit/webdav/property/DavProperty;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v10

    invoke-interface {v6, v10}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 91
    iget-object v10, p0, Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;->propertyNames:Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    invoke-interface {v9}, Lorg/apache/jackrabbit/webdav/property/DavProperty;->getName()Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->add(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Z

    goto :goto_0

    .line 93
    .end local v9    # "setProperty":Lorg/apache/jackrabbit/webdav/property/DavProperty;, "Lorg/apache/jackrabbit/webdav/property/DavProperty<*>;"
    :cond_7
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "ChangeList may only contain DavPropertyName and DavProperty elements."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 96
    .end local v3    # "entry":Ljava/lang/Object;
    :cond_8
    invoke-virtual {p0, v1}, Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;->setRequestBody(Lorg/w3c/dom/Document;)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/property/DavPropertySet;Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;)V
    .locals 11
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "setProperties"    # Lorg/apache/jackrabbit/webdav/property/DavPropertySet;
    .param p3, "removeProperties"    # Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;-><init>(Ljava/lang/String;)V

    .line 51
    new-instance v9, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    invoke-direct {v9}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;-><init>()V

    iput-object v9, p0, Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;->propertyNames:Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    .line 105
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 106
    :cond_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Neither setProperties nor removeProperties must be null."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 108
    :cond_1
    invoke-virtual {p2}, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {p3}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 109
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Either setProperties or removeProperties can be empty; not both of them."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 112
    :cond_2
    iget-object v9, p0, Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;->propertyNames:Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    invoke-virtual {v9, p3}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->addAll(Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;)Z

    .line 113
    invoke-virtual {p2}, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;->getPropertyNames()[Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v8, v0, v3

    .line 114
    .local v8, "setName":Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    iget-object v9, p0, Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;->propertyNames:Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    invoke-virtual {v9, v8}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->add(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Z

    .line 113
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 118
    .end local v8    # "setName":Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    :cond_3
    :try_start_0
    invoke-static {}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 119
    .local v1, "document":Lorg/w3c/dom/Document;
    const-string v9, "propertyupdate"

    sget-object v10, Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v1, v9, v10}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 121
    .local v5, "propupdate":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    .line 122
    const-string v9, "set"

    sget-object v10, Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v5, v9, v10}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v7

    .line 123
    .local v7, "set":Lorg/w3c/dom/Element;
    invoke-virtual {p2, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v9

    invoke-interface {v7, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 126
    .end local v7    # "set":Lorg/w3c/dom/Element;
    :cond_4
    invoke-virtual {p3}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    .line 127
    const-string v9, "remove"

    sget-object v10, Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v5, v9, v10}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 128
    .local v6, "remove":Lorg/w3c/dom/Element;
    invoke-virtual {p3, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v9

    invoke-interface {v6, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 130
    .end local v6    # "remove":Lorg/w3c/dom/Element;
    :cond_5
    invoke-virtual {p0, v1}, Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;->setRequestBody(Lorg/w3c/dom/Document;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    return-void

    .line 131
    .end local v1    # "document":Lorg/w3c/dom/Document;
    .end local v5    # "propupdate":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v2

    .line 132
    .local v2, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v9, Ljava/io/IOException;

    invoke-virtual {v2}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method private getPropElement(Lorg/w3c/dom/Element;Z)Lorg/w3c/dom/Element;
    .locals 3
    .param p1, "propUpdate"    # Lorg/w3c/dom/Element;
    .param p2, "isSet"    # Z

    .prologue
    .line 137
    if-eqz p2, :cond_0

    const-string v1, "set"

    :goto_0
    sget-object v2, Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v1, v2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 138
    .local v0, "updateEntry":Lorg/w3c/dom/Element;
    const-string v1, "prop"

    sget-object v2, Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1, v2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v1

    return-object v1

    .line 137
    .end local v0    # "updateEntry":Lorg/w3c/dom/Element;
    :cond_0
    const-string v1, "remove"

    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    const-string v0, "PROPPATCH"

    return-object v0
.end method

.method public getResponseException()Lorg/apache/jackrabbit/webdav/DavException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;->checkUsed()V

    .line 224
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;->getSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    const-string v0, "Cannot retrieve exception from successful response."

    .line 226
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;->log:Lorg/slf4j/Logger;

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 227
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 229
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;->responseException:Lorg/apache/jackrabbit/webdav/DavException;

    if-eqz v1, :cond_1

    .line 230
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;->responseException:Lorg/apache/jackrabbit/webdav/DavException;

    .line 232
    :goto_0
    return-object v1

    :cond_1
    invoke-super {p0}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;->getResponseException()Lorg/apache/jackrabbit/webdav/DavException;

    move-result-object v1

    goto :goto_0
.end method

.method protected isSuccess(I)Z
    .locals 1
    .param p1, "statusCode"    # I

    .prologue
    .line 160
    const/16 v0, 0xcf

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected processMultiStatusBody(Lorg/apache/jackrabbit/webdav/MultiStatus;Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 12
    .param p1, "multiStatus"    # Lorg/apache/jackrabbit/webdav/MultiStatus;
    .param p2, "httpState"    # Lorg/apache/commons/httpclient/HttpState;
    .param p3, "httpConnection"    # Lorg/apache/commons/httpclient/HttpConnection;

    .prologue
    const/4 v11, 0x1

    .line 172
    invoke-virtual {p1}, Lorg/apache/jackrabbit/webdav/MultiStatus;->getResponses()[Lorg/apache/jackrabbit/webdav/MultiStatusResponse;

    move-result-object v5

    .line 173
    .local v5, "resp":[Lorg/apache/jackrabbit/webdav/MultiStatusResponse;
    array-length v8, v5

    if-eq v8, v11, :cond_0

    .line 174
    sget-object v8, Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;->log:Lorg/slf4j/Logger;

    const-string v9, "Expected a single multi-status response in PROPPATCH."

    invoke-interface {v8, v9}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 176
    :cond_0
    const/4 v7, 0x1

    .line 178
    .local v7, "success":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v11, :cond_5

    .line 179
    aget-object v8, v5, v1

    const/16 v9, 0xc8

    invoke-virtual {v8, v9}, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->getPropertyNames(I)Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    move-result-object v3

    .line 180
    .local v3, "okSet":Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;
    invoke-virtual {v3}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 181
    sget-object v8, Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;->log:Lorg/slf4j/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PROPPATCH failed: No \'OK\' response found for resource "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v5, v1

    invoke-virtual {v10}, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->getHref()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 182
    const/4 v7, 0x0

    .line 190
    :cond_1
    invoke-virtual {v3}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 191
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v8, "The following properties outside of the original request where set or removed: "

    invoke-direct {v0, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 192
    .local v0, "b":Ljava/lang/StringBuffer;
    invoke-virtual {v3}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->iterator()Lorg/apache/jackrabbit/webdav/property/DavPropertyNameIterator;

    move-result-object v2

    .line 193
    .local v2, "it":Lorg/apache/jackrabbit/webdav/property/DavPropertyNameIterator;
    :goto_1
    invoke-interface {v2}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 194
    invoke-interface {v2}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameIterator;->nextPropertyName()Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 184
    .end local v0    # "b":Ljava/lang/StringBuffer;
    .end local v2    # "it":Lorg/apache/jackrabbit/webdav/property/DavPropertyNameIterator;
    :cond_2
    iget-object v8, p0, Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;->propertyNames:Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    invoke-virtual {v8}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->iterator()Lorg/apache/jackrabbit/webdav/property/DavPropertyNameIterator;

    move-result-object v2

    .line 185
    .restart local v2    # "it":Lorg/apache/jackrabbit/webdav/property/DavPropertyNameIterator;
    :goto_2
    invoke-interface {v2}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 186
    invoke-interface {v2}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameIterator;->nextPropertyName()Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v4

    .line 187
    .local v4, "pn":Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    invoke-virtual {v3, v4}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->remove(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Z

    move-result v7

    .line 188
    goto :goto_2

    .line 196
    .end local v4    # "pn":Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    .restart local v0    # "b":Ljava/lang/StringBuffer;
    :cond_3
    sget-object v8, Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;->log:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 178
    .end local v0    # "b":Ljava/lang/StringBuffer;
    .end local v2    # "it":Lorg/apache/jackrabbit/webdav/property/DavPropertyNameIterator;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    .end local v3    # "okSet":Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;
    :cond_5
    if-nez v7, :cond_6

    .line 201
    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-virtual {v8}, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->getStatus()[Lorg/apache/jackrabbit/webdav/Status;

    move-result-object v6

    .line 203
    .local v6, "st":[Lorg/apache/jackrabbit/webdav/Status;
    const/4 v1, 0x0

    :goto_3
    array-length v8, v6

    if-ge v1, v8, :cond_6

    iget-object v8, p0, Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;->responseException:Lorg/apache/jackrabbit/webdav/DavException;

    if-nez v8, :cond_6

    .line 204
    aget-object v8, v6, v1

    invoke-virtual {v8}, Lorg/apache/jackrabbit/webdav/Status;->getStatusCode()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 209
    new-instance v8, Lorg/apache/jackrabbit/webdav/DavException;

    aget-object v9, v6, v1

    invoke-virtual {v9}, Lorg/apache/jackrabbit/webdav/Status;->getStatusCode()I

    move-result v9

    invoke-direct {v8, v9}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(I)V

    iput-object v8, p0, Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;->responseException:Lorg/apache/jackrabbit/webdav/DavException;

    .line 203
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 213
    .end local v6    # "st":[Lorg/apache/jackrabbit/webdav/Status;
    :cond_6
    return-void

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x1a8
        :pswitch_0
    .end packed-switch
.end method
