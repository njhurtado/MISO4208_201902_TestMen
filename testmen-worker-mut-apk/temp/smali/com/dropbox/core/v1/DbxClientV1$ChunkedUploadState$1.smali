.class final Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState$1;
.super Lcom/dropbox/core/json/JsonReader;
.source "DbxClientV1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/json/JsonReader",
        "<",
        "Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 889
    invoke-direct {p0}, Lcom/dropbox/core/json/JsonReader;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState;
    .locals 8
    .param p1, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 893
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->expectObjectStart(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v4

    .line 895
    .local v4, "top":Lcom/fasterxml/jackson/core/JsonLocation;
    const/4 v5, 0x0

    .line 896
    .local v5, "uploadId":Ljava/lang/String;
    const-wide/16 v0, -0x1

    .line 898
    .local v0, "bytesComplete":J
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v6, v7, :cond_2

    .line 899
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 900
    .local v3, "fieldName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 903
    :try_start_0
    const-string v6, "upload_id"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 904
    sget-object v6, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v6, p1, v3, v5}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "uploadId":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .restart local v5    # "uploadId":Ljava/lang/String;
    goto :goto_0

    .line 906
    :cond_0
    const-string v6, "offset"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 907
    invoke-static {p1, v3, v0, v1}, Lcom/dropbox/core/json/JsonReader;->readUnsignedLongField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0

    .line 910
    :cond_1
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V
    :try_end_0
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 913
    .end local v5    # "uploadId":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 914
    .local v2, "ex":Lcom/dropbox/core/json/JsonReadException;
    invoke-virtual {v2, v3}, Lcom/dropbox/core/json/JsonReadException;->addFieldContext(Ljava/lang/String;)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v6

    throw v6

    .line 918
    .end local v2    # "ex":Lcom/dropbox/core/json/JsonReadException;
    .end local v3    # "fieldName":Ljava/lang/String;
    .restart local v5    # "uploadId":Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->expectObjectEnd(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 920
    if-nez v5, :cond_3

    new-instance v6, Lcom/dropbox/core/json/JsonReadException;

    const-string v7, "missing field \"upload_id\""

    invoke-direct {v6, v7, v4}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v6

    .line 921
    :cond_3
    const-wide/16 v6, -0x1

    cmp-long v6, v0, v6

    if-nez v6, :cond_4

    new-instance v6, Lcom/dropbox/core/json/JsonReadException;

    const-string v7, "missing field \"offset\""

    invoke-direct {v6, v7, v4}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v6

    .line 923
    :cond_4
    new-instance v6, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState;

    invoke-direct {v6, v5, v0, v1}, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState;-><init>(Ljava/lang/String;J)V

    return-object v6
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
    .line 889
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState$1;->read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState;

    move-result-object v0

    return-object v0
.end method
