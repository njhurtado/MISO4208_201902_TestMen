.class public Lorg/apache/jackrabbit/webdav/transaction/TransactionInfo;
.super Ljava/lang/Object;
.source "TransactionInfo.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/transaction/TransactionConstants;
.implements Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;


# static fields
.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private final isCommit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/apache/jackrabbit/webdav/transaction/TransactionInfo;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/transaction/TransactionInfo;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 4
    .param p1, "transactionInfo"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x190

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    if-eqz p1, :cond_0

    const-string v1, "transactioninfo"

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 67
    :cond_0
    sget-object v1, Lorg/apache/jackrabbit/webdav/transaction/TransactionInfo;->log:Lorg/slf4j/Logger;

    const-string v2, "\'transactionInfo\' element expected."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 68
    new-instance v1, Lorg/apache/jackrabbit/webdav/DavException;

    invoke-direct {v1, v3}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(I)V

    throw v1

    .line 70
    :cond_1
    const-string v1, "transactionstatus"

    sget-object v2, Lorg/apache/jackrabbit/webdav/transaction/TransactionInfo;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v1, v2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 71
    .local v0, "txStatus":Lorg/w3c/dom/Element;
    if-eqz v0, :cond_2

    .line 73
    const-string v1, "commit"

    sget-object v2, Lorg/apache/jackrabbit/webdav/transaction/TransactionInfo;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1, v2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->hasChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/jackrabbit/webdav/transaction/TransactionInfo;->isCommit:Z

    .line 78
    return-void

    .line 75
    :cond_2
    sget-object v1, Lorg/apache/jackrabbit/webdav/transaction/TransactionInfo;->log:Lorg/slf4j/Logger;

    const-string v2, "transactionInfo must contain a single \'transactionstatus\' element."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 76
    new-instance v1, Lorg/apache/jackrabbit/webdav/DavException;

    invoke-direct {v1, v3}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(I)V

    throw v1
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "isCommit"    # Z

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean p1, p0, Lorg/apache/jackrabbit/webdav/transaction/TransactionInfo;->isCommit:Z

    .line 49
    return-void
.end method


# virtual methods
.method public isCommit()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lorg/apache/jackrabbit/webdav/transaction/TransactionInfo;->isCommit:Z

    return v0
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 5
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 98
    const-string v3, "transactioninfo"

    sget-object v4, Lorg/apache/jackrabbit/webdav/transaction/TransactionInfo;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v3, v4}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 99
    .local v0, "elem":Lorg/w3c/dom/Element;
    const-string v3, "transactionstatus"

    sget-object v4, Lorg/apache/jackrabbit/webdav/transaction/TransactionInfo;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v3, v4}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 100
    .local v2, "st":Lorg/w3c/dom/Element;
    iget-boolean v3, p0, Lorg/apache/jackrabbit/webdav/transaction/TransactionInfo;->isCommit:Z

    if-eqz v3, :cond_0

    const-string v1, "commit"

    .line 101
    .local v1, "lName":Ljava/lang/String;
    :goto_0
    sget-object v3, Lorg/apache/jackrabbit/webdav/transaction/TransactionInfo;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v2, v1, v3}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    .line 102
    return-object v0

    .line 100
    .end local v1    # "lName":Ljava/lang/String;
    :cond_0
    const-string v1, "rollback"

    goto :goto_0
.end method
