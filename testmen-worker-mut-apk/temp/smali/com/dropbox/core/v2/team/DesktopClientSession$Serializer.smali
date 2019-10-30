.class Lcom/dropbox/core/v2/team/DesktopClientSession$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "DesktopClientSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/DesktopClientSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/DesktopClientSession;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/DesktopClientSession$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 365
    new-instance v0, Lcom/dropbox/core/v2/team/DesktopClientSession$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/DesktopClientSession$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/DesktopClientSession$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/DesktopClientSession$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/DesktopClientSession;
    .locals 17
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "collapsed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 408
    const/4 v14, 0x0

    .line 409
    .local v14, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 410
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/team/DesktopClientSession$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 411
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/team/DesktopClientSession$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v14

    .line 413
    :cond_0
    if-nez v14, :cond_13

    .line 414
    const/4 v2, 0x0

    .line 415
    .local v2, "f_sessionId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 416
    .local v3, "f_hostName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 417
    .local v4, "f_clientType":Lcom/dropbox/core/v2/team/DesktopPlatform;
    const/4 v5, 0x0

    .line 418
    .local v5, "f_clientVersion":Ljava/lang/String;
    const/4 v6, 0x0

    .line 419
    .local v6, "f_platform":Ljava/lang/String;
    const/4 v12, 0x0

    .line 420
    .local v12, "f_isDeleteOnUnlinkSupported":Ljava/lang/Boolean;
    const/4 v8, 0x0

    .line 421
    .local v8, "f_ipAddress":Ljava/lang/String;
    const/4 v9, 0x0

    .line 422
    .local v9, "f_country":Ljava/lang/String;
    const/4 v10, 0x0

    .line 423
    .local v10, "f_created":Ljava/util/Date;
    const/4 v11, 0x0

    .line 424
    .local v11, "f_updated":Ljava/util/Date;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v7

    sget-object v15, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v7, v15, :cond_b

    .line 425
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v13

    .line 426
    .local v13, "field":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 427
    const-string v7, "session_id"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 428
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_sessionId":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2    # "f_sessionId":Ljava/lang/String;
    goto :goto_0

    .line 430
    :cond_1
    const-string v7, "host_name"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 431
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "f_hostName":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3    # "f_hostName":Ljava/lang/String;
    goto :goto_0

    .line 433
    :cond_2
    const-string v7, "client_type"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 434
    sget-object v7, Lcom/dropbox/core/v2/team/DesktopPlatform$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/DesktopPlatform$Serializer;

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/dropbox/core/v2/team/DesktopPlatform$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/DesktopPlatform;

    move-result-object v4

    goto :goto_0

    .line 436
    :cond_3
    const-string v7, "client_version"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 437
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "f_clientVersion":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .restart local v5    # "f_clientVersion":Ljava/lang/String;
    goto :goto_0

    .line 439
    :cond_4
    const-string v7, "platform"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 440
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "f_platform":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .restart local v6    # "f_platform":Ljava/lang/String;
    goto :goto_0

    .line 442
    :cond_5
    const-string v7, "is_delete_on_unlink_supported"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 443
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "f_isDeleteOnUnlinkSupported":Ljava/lang/Boolean;
    check-cast v12, Ljava/lang/Boolean;

    .restart local v12    # "f_isDeleteOnUnlinkSupported":Ljava/lang/Boolean;
    goto/16 :goto_0

    .line 445
    :cond_6
    const-string v7, "ip_address"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 446
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-static {v7}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "f_ipAddress":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .restart local v8    # "f_ipAddress":Ljava/lang/String;
    goto/16 :goto_0

    .line 448
    :cond_7
    const-string v7, "country"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 449
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-static {v7}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "f_country":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .restart local v9    # "f_country":Ljava/lang/String;
    goto/16 :goto_0

    .line 451
    :cond_8
    const-string v7, "created"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 452
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-static {v7}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "f_created":Ljava/util/Date;
    check-cast v10, Ljava/util/Date;

    .restart local v10    # "f_created":Ljava/util/Date;
    goto/16 :goto_0

    .line 454
    :cond_9
    const-string v7, "updated"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 455
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-static {v7}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "f_updated":Ljava/util/Date;
    check-cast v11, Ljava/util/Date;

    .restart local v11    # "f_updated":Ljava/util/Date;
    goto/16 :goto_0

    .line 458
    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/team/DesktopClientSession$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto/16 :goto_0

    .line 461
    .end local v13    # "field":Ljava/lang/String;
    :cond_b
    if-nez v2, :cond_c

    .line 462
    new-instance v7, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v15, "Required field \"session_id\" missing."

    move-object/from16 v0, p1

    invoke-direct {v7, v0, v15}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v7

    .line 464
    :cond_c
    if-nez v3, :cond_d

    .line 465
    new-instance v7, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v15, "Required field \"host_name\" missing."

    move-object/from16 v0, p1

    invoke-direct {v7, v0, v15}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v7

    .line 467
    :cond_d
    if-nez v4, :cond_e

    .line 468
    new-instance v7, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v15, "Required field \"client_type\" missing."

    move-object/from16 v0, p1

    invoke-direct {v7, v0, v15}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v7

    .line 470
    :cond_e
    if-nez v5, :cond_f

    .line 471
    new-instance v7, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v15, "Required field \"client_version\" missing."

    move-object/from16 v0, p1

    invoke-direct {v7, v0, v15}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v7

    .line 473
    :cond_f
    if-nez v6, :cond_10

    .line 474
    new-instance v7, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v15, "Required field \"platform\" missing."

    move-object/from16 v0, p1

    invoke-direct {v7, v0, v15}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v7

    .line 476
    :cond_10
    if-nez v12, :cond_11

    .line 477
    new-instance v7, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v15, "Required field \"is_delete_on_unlink_supported\" missing."

    move-object/from16 v0, p1

    invoke-direct {v7, v0, v15}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v7

    .line 479
    :cond_11
    new-instance v1, Lcom/dropbox/core/v2/team/DesktopClientSession;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-direct/range {v1 .. v11}, Lcom/dropbox/core/v2/team/DesktopClientSession;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/team/DesktopPlatform;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    .line 484
    .local v1, "value":Lcom/dropbox/core/v2/team/DesktopClientSession;
    if-nez p2, :cond_12

    .line 485
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/team/DesktopClientSession$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 487
    :cond_12
    return-object v1

    .line 482
    .end local v1    # "value":Lcom/dropbox/core/v2/team/DesktopClientSession;
    .end local v2    # "f_sessionId":Ljava/lang/String;
    .end local v3    # "f_hostName":Ljava/lang/String;
    .end local v4    # "f_clientType":Lcom/dropbox/core/v2/team/DesktopPlatform;
    .end local v5    # "f_clientVersion":Ljava/lang/String;
    .end local v6    # "f_platform":Ljava/lang/String;
    .end local v8    # "f_ipAddress":Ljava/lang/String;
    .end local v9    # "f_country":Ljava/lang/String;
    .end local v10    # "f_created":Ljava/util/Date;
    .end local v11    # "f_updated":Ljava/util/Date;
    .end local v12    # "f_isDeleteOnUnlinkSupported":Ljava/lang/Boolean;
    :cond_13
    new-instance v7, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "No subtype found that matches tag: \""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-direct {v7, v0, v15}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v7
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 364
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/DesktopClientSession$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/DesktopClientSession;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/DesktopClientSession;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/team/DesktopClientSession;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 369
    if-nez p3, :cond_0

    .line 370
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 372
    :cond_0
    const-string v0, "session_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 373
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/DesktopClientSession;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 374
    const-string v0, "host_name"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 375
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/DesktopClientSession;->hostName:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 376
    const-string v0, "client_type"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 377
    sget-object v0, Lcom/dropbox/core/v2/team/DesktopPlatform$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/DesktopPlatform$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/team/DesktopClientSession;->clientType:Lcom/dropbox/core/v2/team/DesktopPlatform;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/team/DesktopPlatform$Serializer;->serialize(Lcom/dropbox/core/v2/team/DesktopPlatform;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 378
    const-string v0, "client_version"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 379
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/DesktopClientSession;->clientVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 380
    const-string v0, "platform"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 381
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/DesktopClientSession;->platform:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 382
    const-string v0, "is_delete_on_unlink_supported"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 383
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/team/DesktopClientSession;->isDeleteOnUnlinkSupported:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 384
    iget-object v0, p1, Lcom/dropbox/core/v2/team/DesktopClientSession;->ipAddress:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 385
    const-string v0, "ip_address"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 386
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/DesktopClientSession;->ipAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 388
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/team/DesktopClientSession;->country:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 389
    const-string v0, "country"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 390
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/DesktopClientSession;->country:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 392
    :cond_2
    iget-object v0, p1, Lcom/dropbox/core/v2/team/DesktopClientSession;->created:Ljava/util/Date;

    if-eqz v0, :cond_3

    .line 393
    const-string v0, "created"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 394
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/DesktopClientSession;->created:Ljava/util/Date;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 396
    :cond_3
    iget-object v0, p1, Lcom/dropbox/core/v2/team/DesktopClientSession;->updated:Ljava/util/Date;

    if-eqz v0, :cond_4

    .line 397
    const-string v0, "updated"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 398
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/DesktopClientSession;->updated:Ljava/util/Date;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 400
    :cond_4
    if-nez p3, :cond_5

    .line 401
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 403
    :cond_5
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 364
    check-cast p1, Lcom/dropbox/core/v2/team/DesktopClientSession;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/team/DesktopClientSession$Serializer;->serialize(Lcom/dropbox/core/v2/team/DesktopClientSession;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
