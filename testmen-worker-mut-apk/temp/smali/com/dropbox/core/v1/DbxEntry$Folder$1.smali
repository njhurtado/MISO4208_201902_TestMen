.class final Lcom/dropbox/core/v1/DbxEntry$Folder$1;
.super Lcom/dropbox/core/json/JsonReader;
.source "DbxEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v1/DbxEntry$Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/json/JsonReader",
        "<",
        "Lcom/dropbox/core/v1/DbxEntry$Folder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/dropbox/core/json/JsonReader;-><init>()V

    return-void
.end method


# virtual methods
.method public final read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v1/DbxEntry$Folder;
    .locals 4
    .param p1, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v1

    .line 159
    .local v1, "top":Lcom/fasterxml/jackson/core/JsonLocation;
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/dropbox/core/v1/DbxEntry;->read(Lcom/fasterxml/jackson/core/JsonParser;Lcom/dropbox/core/util/Collector;)Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;

    move-result-object v2

    iget-object v0, v2, Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;->entry:Lcom/dropbox/core/v1/DbxEntry;

    .line 160
    .local v0, "e":Lcom/dropbox/core/v1/DbxEntry;
    instance-of v2, v0, Lcom/dropbox/core/v1/DbxEntry$Folder;

    if-nez v2, :cond_0

    .line 161
    new-instance v2, Lcom/dropbox/core/json/JsonReadException;

    const-string v3, "Expecting a file entry, got a folder entry"

    invoke-direct {v2, v3, v1}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v2

    .line 163
    :cond_0
    check-cast v0, Lcom/dropbox/core/v1/DbxEntry$Folder;

    .end local v0    # "e":Lcom/dropbox/core/v1/DbxEntry;
    return-object v0
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
    .line 154
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v1/DbxEntry$Folder$1;->read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v1/DbxEntry$Folder;

    move-result-object v0

    return-object v0
.end method
