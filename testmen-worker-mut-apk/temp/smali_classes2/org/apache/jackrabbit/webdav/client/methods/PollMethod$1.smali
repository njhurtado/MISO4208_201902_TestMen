.class Lorg/apache/jackrabbit/webdav/client/methods/PollMethod$1;
.super Ljava/lang/Object;
.source "PollMethod.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/observation/EventBundle;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/jackrabbit/webdav/client/methods/PollMethod;->buildDiscoveryFromRoot(Lorg/w3c/dom/Element;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/jackrabbit/webdav/client/methods/PollMethod;

.field final synthetic val$ebElement:Lorg/w3c/dom/Element;


# direct methods
.method constructor <init>(Lorg/apache/jackrabbit/webdav/client/methods/PollMethod;Lorg/w3c/dom/Element;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/client/methods/PollMethod$1;->this$0:Lorg/apache/jackrabbit/webdav/client/methods/PollMethod;

    iput-object p2, p0, Lorg/apache/jackrabbit/webdav/client/methods/PollMethod$1;->val$ebElement:Lorg/w3c/dom/Element;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 2
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 123
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/client/methods/PollMethod$1;->val$ebElement:Lorg/w3c/dom/Element;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    return-object v0
.end method
