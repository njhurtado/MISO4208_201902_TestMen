.class Lcom/dropbox/core/v2/team/MobileClientSession$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "MobileClientSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/MobileClientSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/MobileClientSession;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/MobileClientSession$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 372
    new-instance v0, Lcom/dropbox/core/v2/team/MobileClientSession$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MobileClientSession$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/MobileClientSession$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MobileClientSession$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 371
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/MobileClientSession;
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
    .line 421
    const/4 v13, 0x0

    .line 422
    .local v13, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 423
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/team/MobileClientSession$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 424
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/team/MobileClientSession$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v13

    .line 426
    :cond_0
    if-nez v13, :cond_10

    .line 427
    const/4 v2, 0x0

    .line 428
    .local v2, "f_sessionId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 429
    .local v3, "f_deviceName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 430
    .local v4, "f_clientType":Lcom/dropbox/core/v2/team/MobileClientPlatform;
    const/4 v5, 0x0

    .line 431
    .local v5, "f_ipAddress":Ljava/lang/String;
    const/4 v6, 0x0

    .line 432
    .local v6, "f_country":Ljava/lang/String;
    const/4 v7, 0x0

    .line 433
    .local v7, "f_created":Ljava/util/Date;
    const/4 v8, 0x0

    .line 434
    .local v8, "f_updated":Ljava/util/Date;
    const/4 v9, 0x0

    .line 435
    .local v9, "f_clientVersion":Ljava/lang/String;
    const/4 v10, 0x0

    .line 436
    .local v10, "f_osVersion":Ljava/lang/String;
    const/4 v11, 0x0

    .line 437
    .local v11, "f_lastCarrier":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v14

    sget-object v15, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v14, v15, :cond_b

    .line 438
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v12

    .line 439
    .local v12, "field":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 440
    const-string v14, "session_id"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 441
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_sessionId":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2    # "f_sessionId":Ljava/lang/String;
    goto :goto_0

    .line 443
    :cond_1
    const-string v14, "device_name"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 444
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "f_deviceName":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3    # "f_deviceName":Ljava/lang/String;
    goto :goto_0

    .line 446
    :cond_2
    const-string v14, "client_type"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 447
    sget-object v14, Lcom/dropbox/core/v2/team/MobileClientPlatform$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MobileClientPlatform$Serializer;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/dropbox/core/v2/team/MobileClientPlatform$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/MobileClientPlatform;

    move-result-object v4

    goto :goto_0

    .line 449
    :cond_3
    const-string v14, "ip_address"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 450
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v14

    invoke-static {v14}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "f_ipAddress":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .restart local v5    # "f_ipAddress":Ljava/lang/String;
    goto :goto_0

    .line 452
    :cond_4
    const-string v14, "country"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 453
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v14

    invoke-static {v14}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "f_country":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .restart local v6    # "f_country":Ljava/lang/String;
    goto :goto_0

    .line 455
    :cond_5
    const-string v14, "created"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 456
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v14

    invoke-static {v14}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "f_created":Ljava/util/Date;
    check-cast v7, Ljava/util/Date;

    .restart local v7    # "f_created":Ljava/util/Date;
    goto/16 :goto_0

    .line 458
    :cond_6
    const-string v14, "updated"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 459
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v14

    invoke-static {v14}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "f_updated":Ljava/util/Date;
    check-cast v8, Ljava/util/Date;

    .restart local v8    # "f_updated":Ljava/util/Date;
    goto/16 :goto_0

    .line 461
    :cond_7
    const-string v14, "client_version"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 462
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v14

    invoke-static {v14}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "f_clientVersion":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .restart local v9    # "f_clientVersion":Ljava/lang/String;
    goto/16 :goto_0

    .line 464
    :cond_8
    const-string v14, "os_version"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 465
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v14

    invoke-static {v14}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "f_osVersion":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .restart local v10    # "f_osVersion":Ljava/lang/String;
    goto/16 :goto_0

    .line 467
    :cond_9
    const-string v14, "last_carrier"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 468
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v14

    invoke-static {v14}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "f_lastCarrier":Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .restart local v11    # "f_lastCarrier":Ljava/lang/String;
    goto/16 :goto_0

    .line 471
    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/team/MobileClientSession$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto/16 :goto_0

    .line 474
    .end local v12    # "field":Ljava/lang/String;
    :cond_b
    if-nez v2, :cond_c

    .line 475
    new-instance v14, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v15, "Required field \"session_id\" missing."

    move-object/from16 v0, p1

    invoke-direct {v14, v0, v15}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v14

    .line 477
    :cond_c
    if-nez v3, :cond_d

    .line 478
    new-instance v14, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v15, "Required field \"device_name\" missing."

    move-object/from16 v0, p1

    invoke-direct {v14, v0, v15}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v14

    .line 480
    :cond_d
    if-nez v4, :cond_e

    .line 481
    new-instance v14, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v15, "Required field \"client_type\" missing."

    move-object/from16 v0, p1

    invoke-direct {v14, v0, v15}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v14

    .line 483
    :cond_e
    new-instance v1, Lcom/dropbox/core/v2/team/MobileClientSession;

    invoke-direct/range {v1 .. v11}, Lcom/dropbox/core/v2/team/MobileClientSession;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/team/MobileClientPlatform;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    .local v1, "value":Lcom/dropbox/core/v2/team/MobileClientSession;
    if-nez p2, :cond_f

    .line 489
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/team/MobileClientSession$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 491
    :cond_f
    return-object v1

    .line 486
    .end local v1    # "value":Lcom/dropbox/core/v2/team/MobileClientSession;
    .end local v2    # "f_sessionId":Ljava/lang/String;
    .end local v3    # "f_deviceName":Ljava/lang/String;
    .end local v4    # "f_clientType":Lcom/dropbox/core/v2/team/MobileClientPlatform;
    .end local v5    # "f_ipAddress":Ljava/lang/String;
    .end local v6    # "f_country":Ljava/lang/String;
    .end local v7    # "f_created":Ljava/util/Date;
    .end local v8    # "f_updated":Ljava/util/Date;
    .end local v9    # "f_clientVersion":Ljava/lang/String;
    .end local v10    # "f_osVersion":Ljava/lang/String;
    .end local v11    # "f_lastCarrier":Ljava/lang/String;
    :cond_10
    new-instance v14, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "No subtype found that matches tag: \""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-direct {v14, v0, v15}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v14
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
    .line 371
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/MobileClientSession$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/MobileClientSession;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/MobileClientSession;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/team/MobileClientSession;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 376
    if-nez p3, :cond_0

    .line 377
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 379
    :cond_0
    const-string v0, "session_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 380
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/MobileClientSession;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 381
    const-string v0, "device_name"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 382
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/MobileClientSession;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 383
    const-string v0, "client_type"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 384
    sget-object v0, Lcom/dropbox/core/v2/team/MobileClientPlatform$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MobileClientPlatform$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/team/MobileClientSession;->clientType:Lcom/dropbox/core/v2/team/MobileClientPlatform;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/team/MobileClientPlatform$Serializer;->serialize(Lcom/dropbox/core/v2/team/MobileClientPlatform;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 385
    iget-object v0, p1, Lcom/dropbox/core/v2/team/MobileClientSession;->ipAddress:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 386
    const-string v0, "ip_address"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 387
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/MobileClientSession;->ipAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 389
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/team/MobileClientSession;->country:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 390
    const-string v0, "country"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 391
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/MobileClientSession;->country:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 393
    :cond_2
    iget-object v0, p1, Lcom/dropbox/core/v2/team/MobileClientSession;->created:Ljava/util/Date;

    if-eqz v0, :cond_3

    .line 394
    const-string v0, "created"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 395
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/MobileClientSession;->created:Ljava/util/Date;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 397
    :cond_3
    iget-object v0, p1, Lcom/dropbox/core/v2/team/MobileClientSession;->updated:Ljava/util/Date;

    if-eqz v0, :cond_4

    .line 398
    const-string v0, "updated"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 399
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/MobileClientSession;->updated:Ljava/util/Date;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 401
    :cond_4
    iget-object v0, p1, Lcom/dropbox/core/v2/team/MobileClientSession;->clientVersion:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 402
    const-string v0, "client_version"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 403
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/MobileClientSession;->clientVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 405
    :cond_5
    iget-object v0, p1, Lcom/dropbox/core/v2/team/MobileClientSession;->osVersion:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 406
    const-string v0, "os_version"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 407
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/MobileClientSession;->osVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 409
    :cond_6
    iget-object v0, p1, Lcom/dropbox/core/v2/team/MobileClientSession;->lastCarrier:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 410
    const-string v0, "last_carrier"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 411
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/MobileClientSession;->lastCarrier:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 413
    :cond_7
    if-nez p3, :cond_8

    .line 414
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 416
    :cond_8
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
    .line 371
    check-cast p1, Lcom/dropbox/core/v2/team/MobileClientSession;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/team/MobileClientSession$Serializer;->serialize(Lcom/dropbox/core/v2/team/MobileClientSession;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
