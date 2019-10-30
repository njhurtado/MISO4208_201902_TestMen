.class final Lcom/dropbox/core/v1/DbxAccountInfo$1;
.super Lcom/dropbox/core/json/JsonReader;
.source "DbxAccountInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v1/DbxAccountInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/json/JsonReader",
        "<",
        "Lcom/dropbox/core/v1/DbxAccountInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/dropbox/core/json/JsonReader;-><init>()V

    return-void
.end method


# virtual methods
.method public final read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v1/DbxAccountInfo;
    .locals 20
    .param p1, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 220
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/json/JsonReader;->expectObjectStart(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v16

    .line 222
    .local v16, "top":Lcom/fasterxml/jackson/core/JsonLocation;
    const-wide/16 v4, -0x1

    .line 223
    .local v4, "uid":J
    const/4 v6, 0x0

    .line 224
    .local v6, "display_name":Ljava/lang/String;
    const/4 v7, 0x0

    .line 225
    .local v7, "country":Ljava/lang/String;
    const/4 v8, 0x0

    .line 226
    .local v8, "referral_link":Ljava/lang/String;
    const/4 v9, 0x0

    .line 227
    .local v9, "quota_info":Lcom/dropbox/core/v1/DbxAccountInfo$Quota;
    const/4 v10, 0x0

    .line 228
    .local v10, "email":Ljava/lang/String;
    const/4 v11, 0x0

    .line 229
    .local v11, "nameDetails":Lcom/dropbox/core/v1/DbxAccountInfo$NameDetails;
    const/4 v2, 0x0

    .line 231
    .local v2, "emailVerified":Ljava/lang/Boolean;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v12, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v12, :cond_0

    .line 232
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v15

    .line 233
    .local v15, "fieldName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 236
    :try_start_0
    invoke-static {}, Lcom/dropbox/core/v1/DbxAccountInfo;->access$200()Lcom/dropbox/core/json/JsonReader$FieldMapping;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/dropbox/core/json/JsonReader$FieldMapping;->get(Ljava/lang/String;)I

    move-result v14

    .line 237
    .local v14, "fi":I
    packed-switch v14, :pswitch_data_0

    .line 248
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "bad index: "

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v17, ", field = \""

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v17, "\""

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
    :try_end_0
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    .end local v2    # "emailVerified":Ljava/lang/Boolean;
    .end local v6    # "display_name":Ljava/lang/String;
    .end local v7    # "country":Ljava/lang/String;
    .end local v8    # "referral_link":Ljava/lang/String;
    .end local v9    # "quota_info":Lcom/dropbox/core/v1/DbxAccountInfo$Quota;
    .end local v10    # "email":Ljava/lang/String;
    .end local v11    # "nameDetails":Lcom/dropbox/core/v1/DbxAccountInfo$NameDetails;
    .end local v14    # "fi":I
    :catch_0
    move-exception v13

    .line 252
    .local v13, "ex":Lcom/dropbox/core/json/JsonReadException;
    invoke-virtual {v13, v15}, Lcom/dropbox/core/json/JsonReadException;->addFieldContext(Ljava/lang/String;)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v3

    throw v3

    .line 238
    .end local v13    # "ex":Lcom/dropbox/core/json/JsonReadException;
    .restart local v2    # "emailVerified":Ljava/lang/Boolean;
    .restart local v6    # "display_name":Ljava/lang/String;
    .restart local v7    # "country":Ljava/lang/String;
    .restart local v8    # "referral_link":Ljava/lang/String;
    .restart local v9    # "quota_info":Lcom/dropbox/core/v1/DbxAccountInfo$Quota;
    .restart local v10    # "email":Ljava/lang/String;
    .restart local v11    # "nameDetails":Lcom/dropbox/core/v1/DbxAccountInfo$NameDetails;
    .restart local v14    # "fi":I
    :pswitch_0
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/json/JsonReader;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 239
    :pswitch_1
    move-object/from16 v0, p1

    invoke-static {v0, v15, v4, v5}, Lcom/dropbox/core/json/JsonReader;->readUnsignedLongField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;J)J

    move-result-wide v4

    goto :goto_0

    .line 240
    :pswitch_2
    sget-object v3, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v15, v6}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "display_name":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .restart local v6    # "display_name":Ljava/lang/String;
    goto :goto_0

    .line 241
    :pswitch_3
    sget-object v3, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v15, v7}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "country":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .restart local v7    # "country":Ljava/lang/String;
    goto :goto_0

    .line 242
    :pswitch_4
    sget-object v3, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v15, v8}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "referral_link":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .restart local v8    # "referral_link":Ljava/lang/String;
    goto :goto_0

    .line 243
    :pswitch_5
    sget-object v3, Lcom/dropbox/core/v1/DbxAccountInfo$Quota;->Reader:Lcom/dropbox/core/json/JsonReader;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v15, v9}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "quota_info":Lcom/dropbox/core/v1/DbxAccountInfo$Quota;
    check-cast v9, Lcom/dropbox/core/v1/DbxAccountInfo$Quota;

    .restart local v9    # "quota_info":Lcom/dropbox/core/v1/DbxAccountInfo$Quota;
    goto/16 :goto_0

    .line 244
    :pswitch_6
    sget-object v3, Lcom/dropbox/core/v1/DbxAccountInfo$NameDetails;->Reader:Lcom/dropbox/core/json/JsonReader;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v15, v11}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "nameDetails":Lcom/dropbox/core/v1/DbxAccountInfo$NameDetails;
    check-cast v11, Lcom/dropbox/core/v1/DbxAccountInfo$NameDetails;

    .restart local v11    # "nameDetails":Lcom/dropbox/core/v1/DbxAccountInfo$NameDetails;
    goto/16 :goto_0

    .line 245
    :pswitch_7
    sget-object v3, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v15, v10}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "email":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .restart local v10    # "email":Ljava/lang/String;
    goto/16 :goto_0

    .line 246
    :pswitch_8
    sget-object v3, Lcom/dropbox/core/json/JsonReader;->BooleanReader:Lcom/dropbox/core/json/JsonReader;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v15, v2}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "emailVerified":Ljava/lang/Boolean;
    check-cast v2, Ljava/lang/Boolean;
    :try_end_1
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v2    # "emailVerified":Ljava/lang/Boolean;
    goto/16 :goto_0

    .line 256
    .end local v14    # "fi":I
    .end local v15    # "fieldName":Ljava/lang/String;
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/json/JsonReader;->expectObjectEnd(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 258
    const-wide/16 v18, 0x0

    cmp-long v3, v4, v18

    if-gez v3, :cond_1

    new-instance v3, Lcom/dropbox/core/json/JsonReadException;

    const-string v12, "missing field \"uid\""

    move-object/from16 v0, v16

    invoke-direct {v3, v12, v0}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v3

    .line 259
    :cond_1
    if-nez v6, :cond_2

    new-instance v3, Lcom/dropbox/core/json/JsonReadException;

    const-string v12, "missing field \"display_name\""

    move-object/from16 v0, v16

    invoke-direct {v3, v12, v0}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v3

    .line 260
    :cond_2
    if-nez v7, :cond_3

    new-instance v3, Lcom/dropbox/core/json/JsonReadException;

    const-string v12, "missing field \"country\""

    move-object/from16 v0, v16

    invoke-direct {v3, v12, v0}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v3

    .line 261
    :cond_3
    if-nez v8, :cond_4

    new-instance v3, Lcom/dropbox/core/json/JsonReadException;

    const-string v12, "missing field \"referral_link\""

    move-object/from16 v0, v16

    invoke-direct {v3, v12, v0}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v3

    .line 262
    :cond_4
    if-nez v9, :cond_5

    new-instance v3, Lcom/dropbox/core/json/JsonReadException;

    const-string v12, "missing field \"quota_info\""

    move-object/from16 v0, v16

    invoke-direct {v3, v12, v0}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v3

    .line 263
    :cond_5
    if-nez v10, :cond_6

    new-instance v3, Lcom/dropbox/core/json/JsonReadException;

    const-string v12, "missing field \"email\""

    move-object/from16 v0, v16

    invoke-direct {v3, v12, v0}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v3

    .line 264
    :cond_6
    if-nez v11, :cond_7

    new-instance v3, Lcom/dropbox/core/json/JsonReadException;

    const-string v12, "missing field \"nameDetails\""

    move-object/from16 v0, v16

    invoke-direct {v3, v12, v0}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v3

    .line 265
    :cond_7
    if-nez v2, :cond_8

    new-instance v3, Lcom/dropbox/core/json/JsonReadException;

    const-string v12, "missing field \"emailVerified\""

    move-object/from16 v0, v16

    invoke-direct {v3, v12, v0}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v3

    .line 267
    :cond_8
    new-instance v3, Lcom/dropbox/core/v1/DbxAccountInfo;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-direct/range {v3 .. v12}, Lcom/dropbox/core/v1/DbxAccountInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v1/DbxAccountInfo$Quota;Ljava/lang/String;Lcom/dropbox/core/v1/DbxAccountInfo$NameDetails;Z)V

    return-object v3

    .line 237
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
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
    .line 216
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v1/DbxAccountInfo$1;->read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v1/DbxAccountInfo;

    move-result-object v0

    return-object v0
.end method
