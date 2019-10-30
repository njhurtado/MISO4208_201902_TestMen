.class final Lcom/dropbox/core/v1/DbxEntry$2;
.super Lcom/dropbox/core/json/JsonReader;
.source "DbxEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v1/DbxEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/json/JsonReader",
        "<",
        "Lcom/dropbox/core/v1/DbxEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 626
    invoke-direct {p0}, Lcom/dropbox/core/json/JsonReader;-><init>()V

    return-void
.end method


# virtual methods
.method public final read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v1/DbxEntry;
    .locals 2
    .param p1, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 630
    invoke-static {p1, v1}, Lcom/dropbox/core/v1/DbxEntry;->readMaybeDeleted(Lcom/fasterxml/jackson/core/JsonParser;Lcom/dropbox/core/util/Collector;)Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;

    move-result-object v0

    .line 631
    .local v0, "wc":Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;, "Lcom/dropbox/core/v1/DbxEntry$WithChildrenC<*>;"
    if-nez v0, :cond_0

    .line 632
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;->entry:Lcom/dropbox/core/v1/DbxEntry;

    goto :goto_0
.end method

.method public bridge synthetic read(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 626
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v1/DbxEntry$2;->read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v1/DbxEntry;

    move-result-object v0

    return-object v0
.end method
