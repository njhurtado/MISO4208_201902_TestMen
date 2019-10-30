.class Lcom/dropbox/core/v2/team/MemberProfile$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "MemberProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/MemberProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/MemberProfile;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/MemberProfile$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 432
    new-instance v0, Lcom/dropbox/core/v2/team/MemberProfile$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MemberProfile$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/MemberProfile$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MemberProfile$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 431
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/MemberProfile;
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
    .line 475
    const/4 v14, 0x0

    .line 476
    .local v14, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 477
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/team/MemberProfile$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 478
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/team/MemberProfile$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v14

    .line 480
    :cond_0
    if-nez v14, :cond_13

    .line 481
    const/4 v2, 0x0

    .line 482
    .local v2, "f_teamMemberId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 483
    .local v3, "f_email":Ljava/lang/String;
    const/4 v12, 0x0

    .line 484
    .local v12, "f_emailVerified":Ljava/lang/Boolean;
    const/4 v5, 0x0

    .line 485
    .local v5, "f_status":Lcom/dropbox/core/v2/team/TeamMemberStatus;
    const/4 v6, 0x0

    .line 486
    .local v6, "f_name":Lcom/dropbox/core/v2/users/Name;
    const/4 v7, 0x0

    .line 487
    .local v7, "f_membershipType":Lcom/dropbox/core/v2/team/TeamMembershipType;
    const/4 v8, 0x0

    .line 488
    .local v8, "f_externalId":Ljava/lang/String;
    const/4 v9, 0x0

    .line 489
    .local v9, "f_accountId":Ljava/lang/String;
    const/4 v10, 0x0

    .line 490
    .local v10, "f_joinedOn":Ljava/util/Date;
    const/4 v11, 0x0

    .line 491
    .local v11, "f_persistentId":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v15, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v15, :cond_b

    .line 492
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v13

    .line 493
    .local v13, "field":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 494
    const-string v4, "team_member_id"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 495
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_teamMemberId":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2    # "f_teamMemberId":Ljava/lang/String;
    goto :goto_0

    .line 497
    :cond_1
    const-string v4, "email"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 498
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "f_email":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3    # "f_email":Ljava/lang/String;
    goto :goto_0

    .line 500
    :cond_2
    const-string v4, "email_verified"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 501
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "f_emailVerified":Ljava/lang/Boolean;
    check-cast v12, Ljava/lang/Boolean;

    .restart local v12    # "f_emailVerified":Ljava/lang/Boolean;
    goto :goto_0

    .line 503
    :cond_3
    const-string v4, "status"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 504
    sget-object v4, Lcom/dropbox/core/v2/team/TeamMemberStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamMemberStatus$Serializer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/dropbox/core/v2/team/TeamMemberStatus$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/TeamMemberStatus;

    move-result-object v5

    goto :goto_0

    .line 506
    :cond_4
    const-string v4, "name"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 507
    sget-object v4, Lcom/dropbox/core/v2/users/Name$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/Name$Serializer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/dropbox/core/v2/users/Name$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "f_name":Lcom/dropbox/core/v2/users/Name;
    check-cast v6, Lcom/dropbox/core/v2/users/Name;

    .restart local v6    # "f_name":Lcom/dropbox/core/v2/users/Name;
    goto :goto_0

    .line 509
    :cond_5
    const-string v4, "membership_type"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 510
    sget-object v4, Lcom/dropbox/core/v2/team/TeamMembershipType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamMembershipType$Serializer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/dropbox/core/v2/team/TeamMembershipType$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/TeamMembershipType;

    move-result-object v7

    goto/16 :goto_0

    .line 512
    :cond_6
    const-string v4, "external_id"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 513
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-static {v4}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "f_externalId":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .restart local v8    # "f_externalId":Ljava/lang/String;
    goto/16 :goto_0

    .line 515
    :cond_7
    const-string v4, "account_id"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 516
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-static {v4}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "f_accountId":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .restart local v9    # "f_accountId":Ljava/lang/String;
    goto/16 :goto_0

    .line 518
    :cond_8
    const-string v4, "joined_on"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 519
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-static {v4}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "f_joinedOn":Ljava/util/Date;
    check-cast v10, Ljava/util/Date;

    .restart local v10    # "f_joinedOn":Ljava/util/Date;
    goto/16 :goto_0

    .line 521
    :cond_9
    const-string v4, "persistent_id"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 522
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-static {v4}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "f_persistentId":Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .restart local v11    # "f_persistentId":Ljava/lang/String;
    goto/16 :goto_0

    .line 525
    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/team/MemberProfile$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto/16 :goto_0

    .line 528
    .end local v13    # "field":Ljava/lang/String;
    :cond_b
    if-nez v2, :cond_c

    .line 529
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v15, "Required field \"team_member_id\" missing."

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v15}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 531
    :cond_c
    if-nez v3, :cond_d

    .line 532
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v15, "Required field \"email\" missing."

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v15}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 534
    :cond_d
    if-nez v12, :cond_e

    .line 535
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v15, "Required field \"email_verified\" missing."

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v15}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 537
    :cond_e
    if-nez v5, :cond_f

    .line 538
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v15, "Required field \"status\" missing."

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v15}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 540
    :cond_f
    if-nez v6, :cond_10

    .line 541
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v15, "Required field \"name\" missing."

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v15}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 543
    :cond_10
    if-nez v7, :cond_11

    .line 544
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v15, "Required field \"membership_type\" missing."

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v15}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 546
    :cond_11
    new-instance v1, Lcom/dropbox/core/v2/team/MemberProfile;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct/range {v1 .. v11}, Lcom/dropbox/core/v2/team/MemberProfile;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/TeamMemberStatus;Lcom/dropbox/core/v2/users/Name;Lcom/dropbox/core/v2/team/TeamMembershipType;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    .line 551
    .local v1, "value":Lcom/dropbox/core/v2/team/MemberProfile;
    if-nez p2, :cond_12

    .line 552
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/team/MemberProfile$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 554
    :cond_12
    return-object v1

    .line 549
    .end local v1    # "value":Lcom/dropbox/core/v2/team/MemberProfile;
    .end local v2    # "f_teamMemberId":Ljava/lang/String;
    .end local v3    # "f_email":Ljava/lang/String;
    .end local v5    # "f_status":Lcom/dropbox/core/v2/team/TeamMemberStatus;
    .end local v6    # "f_name":Lcom/dropbox/core/v2/users/Name;
    .end local v7    # "f_membershipType":Lcom/dropbox/core/v2/team/TeamMembershipType;
    .end local v8    # "f_externalId":Ljava/lang/String;
    .end local v9    # "f_accountId":Ljava/lang/String;
    .end local v10    # "f_joinedOn":Ljava/util/Date;
    .end local v11    # "f_persistentId":Ljava/lang/String;
    .end local v12    # "f_emailVerified":Ljava/lang/Boolean;
    :cond_13
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

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

    invoke-direct {v4, v0, v15}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4
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
    .line 431
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/MemberProfile$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/MemberProfile;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/MemberProfile;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/team/MemberProfile;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 436
    if-nez p3, :cond_0

    .line 437
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 439
    :cond_0
    const-string v0, "team_member_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 440
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/MemberProfile;->teamMemberId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 441
    const-string v0, "email"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 442
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/MemberProfile;->email:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 443
    const-string v0, "email_verified"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 444
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/team/MemberProfile;->emailVerified:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 445
    const-string v0, "status"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 446
    sget-object v0, Lcom/dropbox/core/v2/team/TeamMemberStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamMemberStatus$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/team/MemberProfile;->status:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/team/TeamMemberStatus$Serializer;->serialize(Lcom/dropbox/core/v2/team/TeamMemberStatus;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 447
    const-string v0, "name"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 448
    sget-object v0, Lcom/dropbox/core/v2/users/Name$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/Name$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/team/MemberProfile;->name:Lcom/dropbox/core/v2/users/Name;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/users/Name$Serializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 449
    const-string v0, "membership_type"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 450
    sget-object v0, Lcom/dropbox/core/v2/team/TeamMembershipType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamMembershipType$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/team/MemberProfile;->membershipType:Lcom/dropbox/core/v2/team/TeamMembershipType;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/team/TeamMembershipType$Serializer;->serialize(Lcom/dropbox/core/v2/team/TeamMembershipType;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 451
    iget-object v0, p1, Lcom/dropbox/core/v2/team/MemberProfile;->externalId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 452
    const-string v0, "external_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 453
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/MemberProfile;->externalId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 455
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/team/MemberProfile;->accountId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 456
    const-string v0, "account_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 457
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/MemberProfile;->accountId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 459
    :cond_2
    iget-object v0, p1, Lcom/dropbox/core/v2/team/MemberProfile;->joinedOn:Ljava/util/Date;

    if-eqz v0, :cond_3

    .line 460
    const-string v0, "joined_on"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 461
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/MemberProfile;->joinedOn:Ljava/util/Date;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 463
    :cond_3
    iget-object v0, p1, Lcom/dropbox/core/v2/team/MemberProfile;->persistentId:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 464
    const-string v0, "persistent_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 465
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/MemberProfile;->persistentId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 467
    :cond_4
    if-nez p3, :cond_5

    .line 468
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 470
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
    .line 431
    check-cast p1, Lcom/dropbox/core/v2/team/MemberProfile;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/team/MemberProfile$Serializer;->serialize(Lcom/dropbox/core/v2/team/MemberProfile;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
