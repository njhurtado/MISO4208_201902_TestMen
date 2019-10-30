.class Lcom/dropbox/core/v2/team/MemberAddArg$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "MemberAddArg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/MemberAddArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/MemberAddArg;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/MemberAddArg$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 428
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddArg$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MemberAddArg$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/MemberAddArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MemberAddArg$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/MemberAddArg;
    .locals 13
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "collapsed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 461
    const/4 v10, 0x0

    .line 462
    .local v10, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 463
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MemberAddArg$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 464
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MemberAddArg$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v10

    .line 466
    :cond_0
    if-nez v10, :cond_d

    .line 467
    const/4 v1, 0x0

    .line 468
    .local v1, "f_memberEmail":Ljava/lang/String;
    const/4 v2, 0x0

    .line 469
    .local v2, "f_memberGivenName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 470
    .local v3, "f_memberSurname":Ljava/lang/String;
    const/4 v4, 0x0

    .line 471
    .local v4, "f_memberExternalId":Ljava/lang/String;
    const/4 v5, 0x0

    .line 472
    .local v5, "f_memberPersistentId":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 473
    .local v8, "f_sendWelcomeEmail":Ljava/lang/Boolean;
    sget-object v7, Lcom/dropbox/core/v2/team/AdminTier;->MEMBER_ONLY:Lcom/dropbox/core/v2/team/AdminTier;

    .line 474
    .local v7, "f_role":Lcom/dropbox/core/v2/team/AdminTier;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    sget-object v11, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v6, v11, :cond_8

    .line 475
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v9

    .line 476
    .local v9, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 477
    const-string v6, "member_email"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 478
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_memberEmail":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "f_memberEmail":Ljava/lang/String;
    goto :goto_0

    .line 480
    :cond_1
    const-string v6, "member_given_name"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 481
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_memberGivenName":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2    # "f_memberGivenName":Ljava/lang/String;
    goto :goto_0

    .line 483
    :cond_2
    const-string v6, "member_surname"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 484
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "f_memberSurname":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3    # "f_memberSurname":Ljava/lang/String;
    goto :goto_0

    .line 486
    :cond_3
    const-string v6, "member_external_id"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 487
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-static {v6}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "f_memberExternalId":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4    # "f_memberExternalId":Ljava/lang/String;
    goto :goto_0

    .line 489
    :cond_4
    const-string v6, "member_persistent_id"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 490
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-static {v6}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "f_memberPersistentId":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .restart local v5    # "f_memberPersistentId":Ljava/lang/String;
    goto :goto_0

    .line 492
    :cond_5
    const-string v6, "send_welcome_email"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 493
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "f_sendWelcomeEmail":Ljava/lang/Boolean;
    check-cast v8, Ljava/lang/Boolean;

    .restart local v8    # "f_sendWelcomeEmail":Ljava/lang/Boolean;
    goto/16 :goto_0

    .line 495
    :cond_6
    const-string v6, "role"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 496
    sget-object v6, Lcom/dropbox/core/v2/team/AdminTier$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/AdminTier$Serializer;

    invoke-virtual {v6, p1}, Lcom/dropbox/core/v2/team/AdminTier$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/AdminTier;

    move-result-object v7

    goto/16 :goto_0

    .line 499
    :cond_7
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MemberAddArg$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto/16 :goto_0

    .line 502
    .end local v9    # "field":Ljava/lang/String;
    :cond_8
    if-nez v1, :cond_9

    .line 503
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v11, "Required field \"member_email\" missing."

    invoke-direct {v6, p1, v11}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6

    .line 505
    :cond_9
    if-nez v2, :cond_a

    .line 506
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v11, "Required field \"member_given_name\" missing."

    invoke-direct {v6, p1, v11}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6

    .line 508
    :cond_a
    if-nez v3, :cond_b

    .line 509
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v11, "Required field \"member_surname\" missing."

    invoke-direct {v6, p1, v11}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6

    .line 511
    :cond_b
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddArg;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/v2/team/MemberAddArg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/AdminTier;)V

    .line 516
    .local v0, "value":Lcom/dropbox/core/v2/team/MemberAddArg;
    if-nez p2, :cond_c

    .line 517
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MemberAddArg$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 519
    :cond_c
    return-object v0

    .line 514
    .end local v0    # "value":Lcom/dropbox/core/v2/team/MemberAddArg;
    .end local v1    # "f_memberEmail":Ljava/lang/String;
    .end local v2    # "f_memberGivenName":Ljava/lang/String;
    .end local v3    # "f_memberSurname":Ljava/lang/String;
    .end local v4    # "f_memberExternalId":Ljava/lang/String;
    .end local v5    # "f_memberPersistentId":Ljava/lang/String;
    .end local v7    # "f_role":Lcom/dropbox/core/v2/team/AdminTier;
    .end local v8    # "f_sendWelcomeEmail":Ljava/lang/Boolean;
    :cond_d
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No subtype found that matches tag: \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, p1, v11}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6
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
    .line 427
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/MemberAddArg$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/MemberAddArg;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/MemberAddArg;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/team/MemberAddArg;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 432
    if-nez p3, :cond_0

    .line 433
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 435
    :cond_0
    const-string v0, "member_email"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 436
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/MemberAddArg;->memberEmail:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 437
    const-string v0, "member_given_name"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 438
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/MemberAddArg;->memberGivenName:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 439
    const-string v0, "member_surname"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 440
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/MemberAddArg;->memberSurname:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 441
    iget-object v0, p1, Lcom/dropbox/core/v2/team/MemberAddArg;->memberExternalId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 442
    const-string v0, "member_external_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 443
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/MemberAddArg;->memberExternalId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 445
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/team/MemberAddArg;->memberPersistentId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 446
    const-string v0, "member_persistent_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 447
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/MemberAddArg;->memberPersistentId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 449
    :cond_2
    const-string v0, "send_welcome_email"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 450
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/team/MemberAddArg;->sendWelcomeEmail:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 451
    const-string v0, "role"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 452
    sget-object v0, Lcom/dropbox/core/v2/team/AdminTier$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/AdminTier$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/team/MemberAddArg;->role:Lcom/dropbox/core/v2/team/AdminTier;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/team/AdminTier$Serializer;->serialize(Lcom/dropbox/core/v2/team/AdminTier;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 453
    if-nez p3, :cond_3

    .line 454
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 456
    :cond_3
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
    .line 427
    check-cast p1, Lcom/dropbox/core/v2/team/MemberAddArg;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/team/MemberAddArg$Serializer;->serialize(Lcom/dropbox/core/v2/team/MemberAddArg;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
