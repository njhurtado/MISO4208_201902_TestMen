.class Lcom/dropbox/core/v2/users/FullAccount$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "FullAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/users/FullAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/users/FullAccount;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/users/FullAccount$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 503
    new-instance v0, Lcom/dropbox/core/v2/users/FullAccount$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/users/FullAccount$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/users/FullAccount$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/FullAccount$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 502
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/users/FullAccount;
    .locals 20
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "collapsed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 552
    const/16 v19, 0x0

    .line 553
    .local v19, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 554
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/users/FullAccount$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 555
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/users/FullAccount$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v19

    .line 557
    :cond_0
    if-nez v19, :cond_19

    .line 558
    const/4 v2, 0x0

    .line 559
    .local v2, "f_accountId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 560
    .local v3, "f_name":Lcom/dropbox/core/v2/users/Name;
    const/4 v4, 0x0

    .line 561
    .local v4, "f_email":Ljava/lang/String;
    const/16 v16, 0x0

    .line 562
    .local v16, "f_emailVerified":Ljava/lang/Boolean;
    const/4 v15, 0x0

    .line 563
    .local v15, "f_disabled":Ljava/lang/Boolean;
    const/4 v7, 0x0

    .line 564
    .local v7, "f_locale":Ljava/lang/String;
    const/4 v8, 0x0

    .line 565
    .local v8, "f_referralLink":Ljava/lang/String;
    const/16 v17, 0x0

    .line 566
    .local v17, "f_isPaired":Ljava/lang/Boolean;
    const/4 v10, 0x0

    .line 567
    .local v10, "f_accountType":Lcom/dropbox/core/v2/users/AccountType;
    const/4 v11, 0x0

    .line 568
    .local v11, "f_profilePhotoUrl":Ljava/lang/String;
    const/4 v12, 0x0

    .line 569
    .local v12, "f_country":Ljava/lang/String;
    const/4 v13, 0x0

    .line 570
    .local v13, "f_team":Lcom/dropbox/core/v2/users/FullTeam;
    const/4 v14, 0x0

    .line 571
    .local v14, "f_teamMemberId":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v6, :cond_e

    .line 572
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v18

    .line 573
    .local v18, "field":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 574
    const-string v5, "account_id"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 575
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_accountId":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2    # "f_accountId":Ljava/lang/String;
    goto :goto_0

    .line 577
    :cond_1
    const-string v5, "name"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 578
    sget-object v5, Lcom/dropbox/core/v2/users/Name$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/Name$Serializer;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/dropbox/core/v2/users/Name$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "f_name":Lcom/dropbox/core/v2/users/Name;
    check-cast v3, Lcom/dropbox/core/v2/users/Name;

    .restart local v3    # "f_name":Lcom/dropbox/core/v2/users/Name;
    goto :goto_0

    .line 580
    :cond_2
    const-string v5, "email"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 581
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "f_email":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4    # "f_email":Ljava/lang/String;
    goto :goto_0

    .line 583
    :cond_3
    const-string v5, "email_verified"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 584
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "f_emailVerified":Ljava/lang/Boolean;
    check-cast v16, Ljava/lang/Boolean;

    .restart local v16    # "f_emailVerified":Ljava/lang/Boolean;
    goto :goto_0

    .line 586
    :cond_4
    const-string v5, "disabled"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 587
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "f_disabled":Ljava/lang/Boolean;
    check-cast v15, Ljava/lang/Boolean;

    .restart local v15    # "f_disabled":Ljava/lang/Boolean;
    goto :goto_0

    .line 589
    :cond_5
    const-string v5, "locale"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 590
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "f_locale":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .restart local v7    # "f_locale":Ljava/lang/String;
    goto/16 :goto_0

    .line 592
    :cond_6
    const-string v5, "referral_link"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 593
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "f_referralLink":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .restart local v8    # "f_referralLink":Ljava/lang/String;
    goto/16 :goto_0

    .line 595
    :cond_7
    const-string v5, "is_paired"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 596
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "f_isPaired":Ljava/lang/Boolean;
    check-cast v17, Ljava/lang/Boolean;

    .restart local v17    # "f_isPaired":Ljava/lang/Boolean;
    goto/16 :goto_0

    .line 598
    :cond_8
    const-string v5, "account_type"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 599
    sget-object v5, Lcom/dropbox/core/v2/users/AccountType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/AccountType$Serializer;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/dropbox/core/v2/users/AccountType$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/users/AccountType;

    move-result-object v10

    goto/16 :goto_0

    .line 601
    :cond_9
    const-string v5, "profile_photo_url"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 602
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-static {v5}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "f_profilePhotoUrl":Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .restart local v11    # "f_profilePhotoUrl":Ljava/lang/String;
    goto/16 :goto_0

    .line 604
    :cond_a
    const-string v5, "country"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 605
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-static {v5}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "f_country":Ljava/lang/String;
    check-cast v12, Ljava/lang/String;

    .restart local v12    # "f_country":Ljava/lang/String;
    goto/16 :goto_0

    .line 607
    :cond_b
    const-string v5, "team"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 608
    sget-object v5, Lcom/dropbox/core/v2/users/FullTeam$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/FullTeam$Serializer;

    invoke-static {v5}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/dropbox/core/stone/StructSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "f_team":Lcom/dropbox/core/v2/users/FullTeam;
    check-cast v13, Lcom/dropbox/core/v2/users/FullTeam;

    .restart local v13    # "f_team":Lcom/dropbox/core/v2/users/FullTeam;
    goto/16 :goto_0

    .line 610
    :cond_c
    const-string v5, "team_member_id"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 611
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-static {v5}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "f_teamMemberId":Ljava/lang/String;
    check-cast v14, Ljava/lang/String;

    .restart local v14    # "f_teamMemberId":Ljava/lang/String;
    goto/16 :goto_0

    .line 614
    :cond_d
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/users/FullAccount$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto/16 :goto_0

    .line 617
    .end local v18    # "field":Ljava/lang/String;
    :cond_e
    if-nez v2, :cond_f

    .line 618
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v6, "Required field \"account_id\" missing."

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 620
    :cond_f
    if-nez v3, :cond_10

    .line 621
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v6, "Required field \"name\" missing."

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 623
    :cond_10
    if-nez v4, :cond_11

    .line 624
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v6, "Required field \"email\" missing."

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 626
    :cond_11
    if-nez v16, :cond_12

    .line 627
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v6, "Required field \"email_verified\" missing."

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 629
    :cond_12
    if-nez v15, :cond_13

    .line 630
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v6, "Required field \"disabled\" missing."

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 632
    :cond_13
    if-nez v7, :cond_14

    .line 633
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v6, "Required field \"locale\" missing."

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 635
    :cond_14
    if-nez v8, :cond_15

    .line 636
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v6, "Required field \"referral_link\" missing."

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 638
    :cond_15
    if-nez v17, :cond_16

    .line 639
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v6, "Required field \"is_paired\" missing."

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 641
    :cond_16
    if-nez v10, :cond_17

    .line 642
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v6, "Required field \"account_type\" missing."

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 644
    :cond_17
    new-instance v1, Lcom/dropbox/core/v2/users/FullAccount;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-direct/range {v1 .. v14}, Lcom/dropbox/core/v2/users/FullAccount;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/users/Name;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/users/AccountType;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/users/FullTeam;Ljava/lang/String;)V

    .line 649
    .local v1, "value":Lcom/dropbox/core/v2/users/FullAccount;
    if-nez p2, :cond_18

    .line 650
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/users/FullAccount$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 652
    :cond_18
    return-object v1

    .line 647
    .end local v1    # "value":Lcom/dropbox/core/v2/users/FullAccount;
    .end local v2    # "f_accountId":Ljava/lang/String;
    .end local v3    # "f_name":Lcom/dropbox/core/v2/users/Name;
    .end local v4    # "f_email":Ljava/lang/String;
    .end local v7    # "f_locale":Ljava/lang/String;
    .end local v8    # "f_referralLink":Ljava/lang/String;
    .end local v10    # "f_accountType":Lcom/dropbox/core/v2/users/AccountType;
    .end local v11    # "f_profilePhotoUrl":Ljava/lang/String;
    .end local v12    # "f_country":Ljava/lang/String;
    .end local v13    # "f_team":Lcom/dropbox/core/v2/users/FullTeam;
    .end local v14    # "f_teamMemberId":Ljava/lang/String;
    .end local v15    # "f_disabled":Ljava/lang/Boolean;
    .end local v16    # "f_emailVerified":Ljava/lang/Boolean;
    .end local v17    # "f_isPaired":Ljava/lang/Boolean;
    :cond_19
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No subtype found that matches tag: \""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

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
    .line 502
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/users/FullAccount$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/users/FullAccount;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/users/FullAccount;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/users/FullAccount;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 507
    if-nez p3, :cond_0

    .line 508
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 510
    :cond_0
    const-string v0, "account_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 511
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/users/FullAccount;->accountId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 512
    const-string v0, "name"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 513
    sget-object v0, Lcom/dropbox/core/v2/users/Name$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/Name$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/users/FullAccount;->name:Lcom/dropbox/core/v2/users/Name;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/users/Name$Serializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 514
    const-string v0, "email"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 515
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/users/FullAccount;->email:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 516
    const-string v0, "email_verified"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 517
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/users/FullAccount;->emailVerified:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 518
    const-string v0, "disabled"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 519
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/users/FullAccount;->disabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 520
    const-string v0, "locale"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 521
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/users/FullAccount;->locale:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 522
    const-string v0, "referral_link"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 523
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/users/FullAccount;->referralLink:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 524
    const-string v0, "is_paired"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 525
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/users/FullAccount;->isPaired:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 526
    const-string v0, "account_type"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 527
    sget-object v0, Lcom/dropbox/core/v2/users/AccountType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/AccountType$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/users/FullAccount;->accountType:Lcom/dropbox/core/v2/users/AccountType;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/users/AccountType$Serializer;->serialize(Lcom/dropbox/core/v2/users/AccountType;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 528
    iget-object v0, p1, Lcom/dropbox/core/v2/users/FullAccount;->profilePhotoUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 529
    const-string v0, "profile_photo_url"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 530
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/users/FullAccount;->profilePhotoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 532
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/users/FullAccount;->country:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 533
    const-string v0, "country"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 534
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/users/FullAccount;->country:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 536
    :cond_2
    iget-object v0, p1, Lcom/dropbox/core/v2/users/FullAccount;->team:Lcom/dropbox/core/v2/users/FullTeam;

    if-eqz v0, :cond_3

    .line 537
    const-string v0, "team"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 538
    sget-object v0, Lcom/dropbox/core/v2/users/FullTeam$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/FullTeam$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/users/FullAccount;->team:Lcom/dropbox/core/v2/users/FullTeam;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StructSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 540
    :cond_3
    iget-object v0, p1, Lcom/dropbox/core/v2/users/FullAccount;->teamMemberId:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 541
    const-string v0, "team_member_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 542
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/users/FullAccount;->teamMemberId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 544
    :cond_4
    if-nez p3, :cond_5

    .line 545
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 547
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
    .line 502
    check-cast p1, Lcom/dropbox/core/v2/users/FullAccount;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/users/FullAccount$Serializer;->serialize(Lcom/dropbox/core/v2/users/FullAccount;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
