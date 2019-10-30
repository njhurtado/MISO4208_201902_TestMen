.class public abstract Lorg/apache/jackrabbit/webdav/lock/AbstractLockEntry;
.super Ljava/lang/Object;
.source "AbstractLockEntry.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/lock/LockEntry;
.implements Lorg/apache/jackrabbit/webdav/DavConstants;


# static fields
.field private static log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/apache/jackrabbit/webdav/lock/AbstractLockEntry;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/lock/AbstractLockEntry;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 3
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 41
    const-string v1, "lockentry"

    sget-object v2, Lorg/apache/jackrabbit/webdav/lock/AbstractLockEntry;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v1, v2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 42
    .local v0, "entry":Lorg/w3c/dom/Element;
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/lock/AbstractLockEntry;->getScope()Lorg/apache/jackrabbit/webdav/lock/Scope;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/jackrabbit/webdav/lock/Scope;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 43
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/lock/AbstractLockEntry;->getType()Lorg/apache/jackrabbit/webdav/lock/Type;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/jackrabbit/webdav/lock/Type;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 44
    return-object v0
.end method
