.class final Lcom/dropbox/core/v1/DbxAccountInfo$Quota$1;
.super Lcom/dropbox/core/json/JsonReader;
.source "DbxAccountInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v1/DbxAccountInfo$Quota;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/json/JsonReader",
        "<",
        "Lcom/dropbox/core/v1/DbxAccountInfo$Quota;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/dropbox/core/json/JsonReader;-><init>()V

    return-void
.end method


# virtual methods
.method public final read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v1/DbxAccountInfo$Quota;
    .locals 14
    .param p1, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x0

    .line 81
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->expectObjectStart(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v10

    .line 83
    .local v10, "top":Lcom/fasterxml/jackson/core/JsonLocation;
    const-wide/16 v2, -0x1

    .line 84
    .local v2, "quota":J
    const-wide/16 v4, -0x1

    .line 85
    .local v4, "normal":J
    const-wide/16 v6, -0x1

    .line 87
    .local v6, "shared":J
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v11, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v11, :cond_0

    .line 88
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v9

    .line 89
    .local v9, "fieldName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 91
    invoke-static {}, Lcom/dropbox/core/v1/DbxAccountInfo$Quota;->access$000()Lcom/dropbox/core/json/JsonReader$FieldMapping;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/dropbox/core/json/JsonReader$FieldMapping;->get(Ljava/lang/String;)I

    move-result v8

    .line 93
    .local v8, "fi":I
    packed-switch v8, :pswitch_data_0

    .line 99
    :try_start_0
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bad index: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", field = \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
    :try_end_0
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "ex":Lcom/dropbox/core/json/JsonReadException;
    invoke-virtual {v0, v9}, Lcom/dropbox/core/json/JsonReadException;->addFieldContext(Ljava/lang/String;)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v1

    throw v1

    .line 94
    .end local v0    # "ex":Lcom/dropbox/core/json/JsonReadException;
    :pswitch_0
    :try_start_1
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 95
    :pswitch_1
    invoke-static {p1, v9, v2, v3}, Lcom/dropbox/core/json/JsonReader;->readUnsignedLongField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;J)J

    move-result-wide v2

    goto :goto_0

    .line 96
    :pswitch_2
    invoke-static {p1, v9, v4, v5}, Lcom/dropbox/core/json/JsonReader;->readUnsignedLongField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;J)J

    move-result-wide v4

    goto :goto_0

    .line 97
    :pswitch_3
    invoke-static {p1, v9, v6, v7}, Lcom/dropbox/core/json/JsonReader;->readUnsignedLongField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;J)J
    :try_end_1
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v6

    goto :goto_0

    .line 107
    .end local v8    # "fi":I
    .end local v9    # "fieldName":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->expectObjectEnd(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 109
    cmp-long v1, v2, v12

    if-gez v1, :cond_1

    new-instance v1, Lcom/dropbox/core/json/JsonReadException;

    const-string v11, "missing field \"quota\""

    invoke-direct {v1, v11, v10}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v1

    .line 110
    :cond_1
    cmp-long v1, v4, v12

    if-gez v1, :cond_2

    new-instance v1, Lcom/dropbox/core/json/JsonReadException;

    const-string v11, "missing field \"normal\""

    invoke-direct {v1, v11, v10}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v1

    .line 111
    :cond_2
    cmp-long v1, v6, v12

    if-gez v1, :cond_3

    new-instance v1, Lcom/dropbox/core/json/JsonReadException;

    const-string v11, "missing field \"shared\""

    invoke-direct {v1, v11, v10}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v1

    .line 113
    :cond_3
    new-instance v1, Lcom/dropbox/core/v1/DbxAccountInfo$Quota;

    invoke-direct/range {v1 .. v7}, Lcom/dropbox/core/v1/DbxAccountInfo$Quota;-><init>(JJJ)V

    return-object v1

    .line 93
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
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
    .line 77
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v1/DbxAccountInfo$Quota$1;->read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v1/DbxAccountInfo$Quota;

    move-result-object v0

    return-object v0
.end method
