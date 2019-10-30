.class Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchMethod;
.super Lorg/apache/jackrabbit/webdav/client/methods/SearchMethod;
.source "SearchOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/owncloud/android/lib/resources/files/SearchOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchMethod"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/owncloud/android/lib/resources/files/SearchOperation;


# direct methods
.method public constructor <init>(Lcom/owncloud/android/lib/resources/files/SearchOperation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "statement"    # Ljava/lang/String;
    .param p4, "language"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchMethod;->this$0:Lcom/owncloud/android/lib/resources/files/SearchOperation;

    .line 139
    invoke-direct {p0, p2, p3, p4}, Lorg/apache/jackrabbit/webdav/client/methods/SearchMethod;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Lcom/owncloud/android/lib/resources/files/SearchOperation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)V
    .locals 0
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "statement"    # Ljava/lang/String;
    .param p4, "language"    # Ljava/lang/String;
    .param p5, "languageNamespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchMethod;->this$0:Lcom/owncloud/android/lib/resources/files/SearchOperation;

    .line 143
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/apache/jackrabbit/webdav/client/methods/SearchMethod;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)V

    .line 144
    return-void
.end method

.method public constructor <init>(Lcom/owncloud/android/lib/resources/files/SearchOperation;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/search/SearchInfo;)V
    .locals 2
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "searchInfo"    # Lorg/apache/jackrabbit/webdav/search/SearchInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchMethod;->this$0:Lcom/owncloud/android/lib/resources/files/SearchOperation;

    .line 147
    invoke-direct {p0, p2, p3}, Lorg/apache/jackrabbit/webdav/client/methods/SearchMethod;-><init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/search/SearchInfo;)V

    .line 148
    const-string v0, "Content-Type"

    const-string v1, "text/xml"

    invoke-virtual {p0, v0, v1}, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchMethod;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-static {p1}, Lcom/owncloud/android/lib/resources/files/SearchOperation;->access$000(Lcom/owncloud/android/lib/resources/files/SearchOperation;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchMethod;->setRequestBody(Lorg/w3c/dom/Document;)V

    .line 150
    return-void
.end method
