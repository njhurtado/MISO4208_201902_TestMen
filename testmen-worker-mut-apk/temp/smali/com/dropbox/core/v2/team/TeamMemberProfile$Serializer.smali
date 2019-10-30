.class Lcom/dropbox/core/v2/team/TeamMemberProfile$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "TeamMemberProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/TeamMemberProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/TeamMemberProfile;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/TeamMemberProfile$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 376
    new-instance v0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamMemberProfile$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamMemberProfile$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 375
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/TeamMemberProfile;
    .locals 19
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
    const/16 v16, 0x0

    .line 422
    .local v16, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 423
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/team/TeamMemberProfile$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 424
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/team/TeamMemberProfile$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v16

    .line 426
    :cond_0
    if-nez v16, :cond_15

    .line 427
    const/4 v3, 0x0

    .line 428
    .local v3, "f_teamMemberId":Ljava/lang/String;
    const/4 v4, 0x0

    .line 429
    .local v4, "f_email":Ljava/lang/String;
    const/4 v14, 0x0

    .line 430
    .local v14, "f_emailVerified":Ljava/lang/Boolean;
    const/4 v6, 0x0

    .line 431
    .local v6, "f_status":Lcom/dropbox/core/v2/team/TeamMemberStatus;
    const/4 v7, 0x0

    .line 432
    .local v7, "f_name":Lcom/dropbox/core/v2/users/Name;
    const/4 v8, 0x0

    .line 433
    .local v8, "f_membershipType":Lcom/dropbox/core/v2/team/TeamMembershipType;
    const/4 v9, 0x0

    .line 434
    .local v9, "f_groups":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 435
    .local v10, "f_externalId":Ljava/lang/String;
    const/4 v11, 0x0

    .line 436
    .local v11, "f_accountId":Ljava/lang/String;
    const/4 v12, 0x0

    .line 437
    .local v12, "f_joinedOn":Ljava/util/Date;
    const/4 v13, 0x0

    .line 438
    .local v13, "f_persistentId":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    sget-object v17, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    move-object/from16 v0, v17

    if-ne v5, v0, :cond_c

    .line 439
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v15

    .line 440
    .local v15, "field":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 441
    const-string v5, "team_member_id"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 442
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "f_teamMemberId":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3    # "f_teamMemberId":Ljava/lang/String;
    goto :goto_0

    .line 444
    :cond_1
    const-string v5, "email"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 445
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "f_email":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4    # "f_email":Ljava/lang/String;
    goto :goto_0

    .line 447
    :cond_2
    const-string v5, "email_verified"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 448
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "f_emailVerified":Ljava/lang/Boolean;
    check-cast v14, Ljava/lang/Boolean;

    .restart local v14    # "f_emailVerified":Ljava/lang/Boolean;
    goto :goto_0

    .line 450
    :cond_3
    const-string v5, "status"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 451
    sget-object v5, Lcom/dropbox/core/v2/team/TeamMemberStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamMemberStatus$Serializer;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/dropbox/core/v2/team/TeamMemberStatus$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/TeamMemberStatus;

    move-result-object v6

    goto :goto_0

    .line 453
    :cond_4
    const-string v5, "name"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 454
    sget-object v5, Lcom/dropbox/core/v2/users/Name$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/Name$Serializer;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/dropbox/core/v2/users/Name$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "f_name":Lcom/dropbox/core/v2/users/Name;
    check-cast v7, Lcom/dropbox/core/v2/users/Name;

    .restart local v7    # "f_name":Lcom/dropbox/core/v2/users/Name;
    goto :goto_0

    .line 456
    :cond_5
    const-string v5, "membership_type"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 457
    sget-object v5, Lcom/dropbox/core/v2/team/TeamMembershipType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamMembershipType$Serializer;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/dropbox/core/v2/team/TeamMembershipType$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/TeamMembershipType;

    move-result-object v8

    goto/16 :goto_0

    .line 459
    :cond_6
    const-string v5, "groups"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 460
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-static {v5}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "f_groups":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    check-cast v9, Ljava/util/List;

    .restart local v9    # "f_groups":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_0

    .line 462
    :cond_7
    const-string v5, "external_id"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 463
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-static {v5}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "f_externalId":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .restart local v10    # "f_externalId":Ljava/lang/String;
    goto/16 :goto_0

    .line 465
    :cond_8
    const-string v5, "account_id"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 466
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-static {v5}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "f_accountId":Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .restart local v11    # "f_accountId":Ljava/lang/String;
    goto/16 :goto_0

    .line 468
    :cond_9
    const-string v5, "joined_on"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 469
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-static {v5}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "f_joinedOn":Ljava/util/Date;
    check-cast v12, Ljava/util/Date;

    .restart local v12    # "f_joinedOn":Ljava/util/Date;
    goto/16 :goto_0

    .line 471
    :cond_a
    const-string v5, "persistent_id"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 472
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-static {v5}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "f_persistentId":Ljava/lang/String;
    check-cast v13, Ljava/lang/String;

    .restart local v13    # "f_persistentId":Ljava/lang/String;
    goto/16 :goto_0

    .line 475
    :cond_b
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/team/TeamMemberProfile$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto/16 :goto_0

    .line 478
    .end local v15    # "field":Ljava/lang/String;
    :cond_c
    if-nez v3, :cond_d

    .line 479
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v17, "Required field \"team_member_id\" missing."

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-direct {v5, v0, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 481
    :cond_d
    if-nez v4, :cond_e

    .line 482
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v17, "Required field \"email\" missing."

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-direct {v5, v0, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 484
    :cond_e
    if-nez v14, :cond_f

    .line 485
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v17, "Required field \"email_verified\" missing."

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-direct {v5, v0, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 487
    :cond_f
    if-nez v6, :cond_10

    .line 488
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v17, "Required field \"status\" missing."

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-direct {v5, v0, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 490
    :cond_10
    if-nez v7, :cond_11

    .line 491
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v17, "Required field \"name\" missing."

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-direct {v5, v0, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 493
    :cond_11
    if-nez v8, :cond_12

    .line 494
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v17, "Required field \"membership_type\" missing."

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-direct {v5, v0, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 496
    :cond_12
    if-nez v9, :cond_13

    .line 497
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v17, "Required field \"groups\" missing."

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-direct {v5, v0, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 499
    :cond_13
    new-instance v2, Lcom/dropbox/core/v2/team/TeamMemberProfile;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct/range {v2 .. v13}, Lcom/dropbox/core/v2/team/TeamMemberProfile;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/TeamMemberStatus;Lcom/dropbox/core/v2/users/Name;Lcom/dropbox/core/v2/team/TeamMembershipType;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    .line 504
    .local v2, "value":Lcom/dropbox/core/v2/team/TeamMemberProfile;
    if-nez p2, :cond_14

    .line 505
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/team/TeamMemberProfile$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 507
    :cond_14
    return-object v2

    .line 502
    .end local v2    # "value":Lcom/dropbox/core/v2/team/TeamMemberProfile;
    .end local v3    # "f_teamMemberId":Ljava/lang/String;
    .end local v4    # "f_email":Ljava/lang/String;
    .end local v6    # "f_status":Lcom/dropbox/core/v2/team/TeamMemberStatus;
    .end local v7    # "f_name":Lcom/dropbox/core/v2/users/Name;
    .end local v8    # "f_membershipType":Lcom/dropbox/core/v2/team/TeamMembershipType;
    .end local v9    # "f_groups":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "f_externalId":Ljava/lang/String;
    .end local v11    # "f_accountId":Ljava/lang/String;
    .end local v12    # "f_joinedOn":Ljava/util/Date;
    .end local v13    # "f_persistentId":Ljava/lang/String;
    .end local v14    # "f_emailVerified":Ljava/lang/Boolean;
    :cond_15
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "No subtype found that matches tag: \""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-direct {v5, v0, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5
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
    .line 375
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/TeamMemberProfile$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/TeamMemberProfile;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/TeamMemberProfile;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/team/TeamMemberProfile;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 380
    if-nez p3, :cond_0

    .line 381
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 383
    :cond_0
    const-string v0, "team_member_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 384
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->teamMemberId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 385
    const-string v0, "email"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 386
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->email:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 387
    const-string v0, "email_verified"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 388
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->emailVerified:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 389
    const-string v0, "status"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 390
    sget-object v0, Lcom/dropbox/core/v2/team/TeamMemberStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamMemberStatus$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->status:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/team/TeamMemberStatus$Serializer;->serialize(Lcom/dropbox/core/v2/team/TeamMemberStatus;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 391
    const-string v0, "name"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 392
    sget-object v0, Lcom/dropbox/core/v2/users/Name$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/Name$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->name:Lcom/dropbox/core/v2/users/Name;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/users/Name$Serializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 393
    const-string v0, "membership_type"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 394
    sget-object v0, Lcom/dropbox/core/v2/team/TeamMembershipType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamMembershipType$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->membershipType:Lcom/dropbox/core/v2/team/TeamMembershipType;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/team/TeamMembershipType$Serializer;->serialize(Lcom/dropbox/core/v2/team/TeamMembershipType;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 395
    const-string v0, "groups"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 396
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->groups:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 397
    iget-object v0, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->externalId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 398
    const-string v0, "external_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 399
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->externalId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 401
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->accountId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 402
    const-string v0, "account_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 403
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->accountId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 405
    :cond_2
    iget-object v0, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->joinedOn:Ljava/util/Date;

    if-eqz v0, :cond_3

    .line 406
    const-string v0, "joined_on"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 407
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->joinedOn:Ljava/util/Date;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 409
    :cond_3
    iget-object v0, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->persistentId:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 410
    const-string v0, "persistent_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 411
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->persistentId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 413
    :cond_4
    if-nez p3, :cond_5

    .line 414
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 416
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
    .line 375
    check-cast p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/team/TeamMemberProfile$Serializer;->serialize(Lcom/dropbox/core/v2/team/TeamMemberProfile;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
