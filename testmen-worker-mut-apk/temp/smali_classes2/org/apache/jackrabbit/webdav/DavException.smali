.class public Lorg/apache/jackrabbit/webdav/DavException;
.super Ljava/lang/Exception;
.source "DavException.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;


# static fields
.field public static final XML_ERROR:Ljava/lang/String; = "error"

.field private static log:Lorg/slf4j/Logger;

.field private static statusPhrases:Ljava/util/Properties;


# instance fields
.field private errorCode:I

.field private errorCondition:Lorg/w3c/dom/Element;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 37
    const-class v1, Lorg/apache/jackrabbit/webdav/DavException;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    sput-object v1, Lorg/apache/jackrabbit/webdav/DavException;->log:Lorg/slf4j/Logger;

    .line 38
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    sput-object v1, Lorg/apache/jackrabbit/webdav/DavException;->statusPhrases:Ljava/util/Properties;

    .line 41
    :try_start_0
    sget-object v1, Lorg/apache/jackrabbit/webdav/DavException;->statusPhrases:Ljava/util/Properties;

    const-class v2, Lorg/apache/jackrabbit/webdav/DavException;

    const-string v3, "statuscode.properties"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    return-void

    .line 42
    .end local v0    # "e":Ljava/io/IOException;
    :catch_0
    move-exception v0

    .line 43
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v1, Lorg/apache/jackrabbit/webdav/DavException;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load status properties: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    const/4 v2, 0x0

    .line 84
    sget-object v0, Lorg/apache/jackrabbit/webdav/DavException;->statusPhrases:Ljava/util/Properties;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, v2, v2}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lorg/w3c/dom/Element;)V

    .line 85
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lorg/w3c/dom/Element;)V

    .line 62
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;Lorg/w3c/dom/Element;)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;
    .param p4, "errorCondition"    # Lorg/w3c/dom/Element;

    .prologue
    .line 98
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    const/16 v0, 0x1f4

    iput v0, p0, Lorg/apache/jackrabbit/webdav/DavException;->errorCode:I

    .line 99
    iput p1, p0, Lorg/apache/jackrabbit/webdav/DavException;->errorCode:I

    .line 100
    iput-object p4, p0, Lorg/apache/jackrabbit/webdav/DavException;->errorCondition:Lorg/w3c/dom/Element;

    .line 101
    sget-object v0, Lorg/apache/jackrabbit/webdav/DavException;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DavException: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, v0, p2, v0}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lorg/w3c/dom/Element;)V

    .line 74
    return-void
.end method

.method public static getStatusPhrase(I)Ljava/lang/String;
    .locals 3
    .param p0, "errorCode"    # I

    .prologue
    .line 131
    sget-object v0, Lorg/apache/jackrabbit/webdav/DavException;->statusPhrases:Ljava/util/Properties;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lorg/apache/jackrabbit/webdav/DavException;->errorCode:I

    return v0
.end method

.method public getStatusPhrase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lorg/apache/jackrabbit/webdav/DavException;->errorCode:I

    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/DavException;->getStatusPhrase(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasErrorCondition()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/DavException;->errorCondition:Lorg/w3c/dom/Element;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 5
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    const/4 v4, 0x1

    .line 153
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/DavException;->hasErrorCondition()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/DavException;->errorCondition:Lorg/w3c/dom/Element;

    const-string v2, "error"

    sget-object v3, Lorg/apache/jackrabbit/webdav/DavConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v1, v2, v3}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->matches(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/DavException;->errorCondition:Lorg/w3c/dom/Element;

    invoke-interface {p1, v1, v4}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 163
    :goto_0
    return-object v0

    .line 158
    :cond_0
    const-string v1, "error"

    sget-object v2, Lorg/apache/jackrabbit/webdav/DavConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v1, v2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 159
    .local v0, "error":Lorg/w3c/dom/Element;
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/DavException;->errorCondition:Lorg/w3c/dom/Element;

    invoke-interface {p1, v1, v4}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 163
    .end local v0    # "error":Lorg/w3c/dom/Element;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
