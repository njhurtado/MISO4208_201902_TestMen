.class public Lorg/apache/jackrabbit/webdav/ordering/OrderPatch$Member;
.super Ljava/lang/Object;
.source "OrderPatch.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/jackrabbit/webdav/ordering/OrderPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Member"
.end annotation


# instance fields
.field private memberHandle:Ljava/lang/String;

.field private position:Lorg/apache/jackrabbit/webdav/ordering/Position;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/ordering/Position;)V
    .locals 0
    .param p1, "memberHandle"    # Ljava/lang/String;
    .param p2, "position"    # Lorg/apache/jackrabbit/webdav/ordering/Position;

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/ordering/OrderPatch$Member;->memberHandle:Ljava/lang/String;

    .line 177
    iput-object p2, p0, Lorg/apache/jackrabbit/webdav/ordering/OrderPatch$Member;->position:Lorg/apache/jackrabbit/webdav/ordering/Position;

    .line 178
    return-void
.end method


# virtual methods
.method public getMemberHandle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/ordering/OrderPatch$Member;->memberHandle:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()Lorg/apache/jackrabbit/webdav/ordering/Position;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/ordering/OrderPatch$Member;->position:Lorg/apache/jackrabbit/webdav/ordering/Position;

    return-object v0
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 4
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 205
    const-string v1, "order-member"

    sget-object v2, Lorg/apache/jackrabbit/webdav/ordering/OrderingConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v1, v2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 206
    .local v0, "memberElem":Lorg/w3c/dom/Element;
    const-string v1, "segment"

    sget-object v2, Lorg/apache/jackrabbit/webdav/ordering/OrderingConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    iget-object v3, p0, Lorg/apache/jackrabbit/webdav/ordering/OrderPatch$Member;->memberHandle:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 207
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/ordering/OrderPatch$Member;->position:Lorg/apache/jackrabbit/webdav/ordering/Position;

    invoke-virtual {v1, p1}, Lorg/apache/jackrabbit/webdav/ordering/Position;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 208
    return-object v0
.end method
