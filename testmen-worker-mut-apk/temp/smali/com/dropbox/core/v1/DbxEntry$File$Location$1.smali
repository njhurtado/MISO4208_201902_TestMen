.class final Lcom/dropbox/core/v1/DbxEntry$File$Location$1;
.super Lcom/dropbox/core/json/JsonReader;
.source "DbxEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v1/DbxEntry$File$Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/json/JsonReader",
        "<",
        "Lcom/dropbox/core/v1/DbxEntry$File$Location;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 561
    invoke-direct {p0}, Lcom/dropbox/core/json/JsonReader;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v1/DbxEntry$File$Location;
    .locals 6
    .param p1, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 566
    const/4 v2, 0x0

    .line 567
    .local v2, "location":Lcom/dropbox/core/v1/DbxEntry$File$Location;
    invoke-static {p1}, Lcom/dropbox/core/json/JsonArrayReader;->isArrayStart(Lcom/fasterxml/jackson/core/JsonParser;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 568
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->expectArrayStart(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonLocation;

    .line 569
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->readDouble(Lcom/fasterxml/jackson/core/JsonParser;)D

    move-result-wide v0

    .line 570
    .local v0, "latitude":D
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->readDouble(Lcom/fasterxml/jackson/core/JsonParser;)D

    move-result-wide v4

    .line 571
    .local v4, "longitude":D
    new-instance v2, Lcom/dropbox/core/v1/DbxEntry$File$Location;

    .end local v2    # "location":Lcom/dropbox/core/v1/DbxEntry$File$Location;
    invoke-direct {v2, v0, v1, v4, v5}, Lcom/dropbox/core/v1/DbxEntry$File$Location;-><init>(DD)V

    .line 572
    .restart local v2    # "location":Lcom/dropbox/core/v1/DbxEntry$File$Location;
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->expectArrayEnd(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonLocation;

    .line 576
    .end local v0    # "latitude":D
    .end local v4    # "longitude":D
    :goto_0
    return-object v2

    .line 574
    :cond_0
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

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
    .line 561
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v1/DbxEntry$File$Location$1;->read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v1/DbxEntry$File$Location;

    move-result-object v0

    return-object v0
.end method
