.class final Lcom/dropbox/core/v1/DbxEntry$File$2;
.super Lcom/dropbox/core/json/JsonReader;
.source "DbxEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v1/DbxEntry$File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/json/JsonReader",
        "<",
        "Lcom/dropbox/core/v1/DbxEntry$File;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/dropbox/core/json/JsonReader;-><init>()V

    return-void
.end method


# virtual methods
.method public final read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v1/DbxEntry$File;
    .locals 5
    .param p1, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 330
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v1

    .line 331
    .local v1, "top":Lcom/fasterxml/jackson/core/JsonLocation;
    const/4 v3, 0x1

    invoke-static {p1, v0, v3}, Lcom/dropbox/core/v1/DbxEntry;->access$100(Lcom/fasterxml/jackson/core/JsonParser;Lcom/dropbox/core/util/Collector;Z)Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;

    move-result-object v2

    .line 332
    .local v2, "wc":Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;, "Lcom/dropbox/core/v1/DbxEntry$WithChildrenC<*>;"
    if-nez v2, :cond_0

    .line 337
    :goto_0
    return-object v0

    .line 333
    :cond_0
    iget-object v0, v2, Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;->entry:Lcom/dropbox/core/v1/DbxEntry;

    .line 334
    .local v0, "e":Lcom/dropbox/core/v1/DbxEntry;
    instance-of v3, v0, Lcom/dropbox/core/v1/DbxEntry$File;

    if-nez v3, :cond_1

    .line 335
    new-instance v3, Lcom/dropbox/core/json/JsonReadException;

    const-string v4, "Expecting a file entry, got a folder entry"

    invoke-direct {v3, v4, v1}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v3

    .line 337
    :cond_1
    check-cast v0, Lcom/dropbox/core/v1/DbxEntry$File;

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
    .line 326
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v1/DbxEntry$File$2;->read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v1/DbxEntry$File;

    move-result-object v0

    return-object v0
.end method
