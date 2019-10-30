.class Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "SharedFolderMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 491
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 490
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
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
    .line 542
    const/16 v18, 0x0

    .line 543
    .local v18, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 544
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 545
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v18

    .line 547
    :cond_0
    if-nez v18, :cond_18

    .line 548
    const/4 v2, 0x0

    .line 549
    .local v2, "f_accessType":Lcom/dropbox/core/v2/sharing/AccessLevel;
    const/4 v15, 0x0

    .line 550
    .local v15, "f_isInsideTeamFolder":Ljava/lang/Boolean;
    const/16 v16, 0x0

    .line 551
    .local v16, "f_isTeamFolder":Ljava/lang/Boolean;
    const/4 v5, 0x0

    .line 552
    .local v5, "f_name":Ljava/lang/String;
    const/4 v6, 0x0

    .line 553
    .local v6, "f_policy":Lcom/dropbox/core/v2/sharing/FolderPolicy;
    const/4 v7, 0x0

    .line 554
    .local v7, "f_previewUrl":Ljava/lang/String;
    const/4 v8, 0x0

    .line 555
    .local v8, "f_sharedFolderId":Ljava/lang/String;
    const/4 v9, 0x0

    .line 556
    .local v9, "f_timeInvited":Ljava/util/Date;
    const/4 v10, 0x0

    .line 557
    .local v10, "f_ownerTeam":Lcom/dropbox/core/v2/users/Team;
    const/4 v11, 0x0

    .line 558
    .local v11, "f_parentSharedFolderId":Ljava/lang/String;
    const/4 v12, 0x0

    .line 559
    .local v12, "f_pathLower":Ljava/lang/String;
    const/4 v13, 0x0

    .line 560
    .local v13, "f_linkMetadata":Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;
    const/4 v14, 0x0

    .line 561
    .local v14, "f_permissions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/FolderPermission;>;"
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_e

    .line 562
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v17

    .line 563
    .local v17, "field":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 564
    const-string v3, "access_type"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 565
    sget-object v3, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/AccessLevel;

    move-result-object v2

    goto :goto_0

    .line 567
    :cond_1
    const-string v3, "is_inside_team_folder"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 568
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "f_isInsideTeamFolder":Ljava/lang/Boolean;
    check-cast v15, Ljava/lang/Boolean;

    .restart local v15    # "f_isInsideTeamFolder":Ljava/lang/Boolean;
    goto :goto_0

    .line 570
    :cond_2
    const-string v3, "is_team_folder"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 571
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "f_isTeamFolder":Ljava/lang/Boolean;
    check-cast v16, Ljava/lang/Boolean;

    .restart local v16    # "f_isTeamFolder":Ljava/lang/Boolean;
    goto :goto_0

    .line 573
    :cond_3
    const-string v3, "name"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 574
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "f_name":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .restart local v5    # "f_name":Ljava/lang/String;
    goto :goto_0

    .line 576
    :cond_4
    const-string v3, "policy"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 577
    sget-object v3, Lcom/dropbox/core/v2/sharing/FolderPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FolderPolicy$Serializer;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/dropbox/core/v2/sharing/FolderPolicy$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "f_policy":Lcom/dropbox/core/v2/sharing/FolderPolicy;
    check-cast v6, Lcom/dropbox/core/v2/sharing/FolderPolicy;

    .restart local v6    # "f_policy":Lcom/dropbox/core/v2/sharing/FolderPolicy;
    goto :goto_0

    .line 579
    :cond_5
    const-string v3, "preview_url"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 580
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "f_previewUrl":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .restart local v7    # "f_previewUrl":Ljava/lang/String;
    goto/16 :goto_0

    .line 582
    :cond_6
    const-string v3, "shared_folder_id"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 583
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "f_sharedFolderId":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .restart local v8    # "f_sharedFolderId":Ljava/lang/String;
    goto/16 :goto_0

    .line 585
    :cond_7
    const-string v3, "time_invited"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 586
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "f_timeInvited":Ljava/util/Date;
    check-cast v9, Ljava/util/Date;

    .restart local v9    # "f_timeInvited":Ljava/util/Date;
    goto/16 :goto_0

    .line 588
    :cond_8
    const-string v3, "owner_team"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 589
    sget-object v3, Lcom/dropbox/core/v2/users/Team$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/Team$Serializer;

    invoke-static {v3}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/dropbox/core/stone/StructSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "f_ownerTeam":Lcom/dropbox/core/v2/users/Team;
    check-cast v10, Lcom/dropbox/core/v2/users/Team;

    .restart local v10    # "f_ownerTeam":Lcom/dropbox/core/v2/users/Team;
    goto/16 :goto_0

    .line 591
    :cond_9
    const-string v3, "parent_shared_folder_id"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 592
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v3

    invoke-static {v3}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "f_parentSharedFolderId":Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .restart local v11    # "f_parentSharedFolderId":Ljava/lang/String;
    goto/16 :goto_0

    .line 594
    :cond_a
    const-string v3, "path_lower"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 595
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v3

    invoke-static {v3}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "f_pathLower":Ljava/lang/String;
    check-cast v12, Ljava/lang/String;

    .restart local v12    # "f_pathLower":Ljava/lang/String;
    goto/16 :goto_0

    .line 597
    :cond_b
    const-string v3, "link_metadata"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 598
    sget-object v3, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Serializer;

    invoke-static {v3}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/dropbox/core/stone/StructSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "f_linkMetadata":Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;
    check-cast v13, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    .restart local v13    # "f_linkMetadata":Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;
    goto/16 :goto_0

    .line 600
    :cond_c
    const-string v3, "permissions"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 601
    sget-object v3, Lcom/dropbox/core/v2/sharing/FolderPermission$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FolderPermission$Serializer;

    invoke-static {v3}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v3

    invoke-static {v3}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "f_permissions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/FolderPermission;>;"
    check-cast v14, Ljava/util/List;

    .restart local v14    # "f_permissions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/FolderPermission;>;"
    goto/16 :goto_0

    .line 604
    :cond_d
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto/16 :goto_0

    .line 607
    .end local v17    # "field":Ljava/lang/String;
    :cond_e
    if-nez v2, :cond_f

    .line 608
    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v4, "Required field \"access_type\" missing."

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v4}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v3

    .line 610
    :cond_f
    if-nez v15, :cond_10

    .line 611
    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v4, "Required field \"is_inside_team_folder\" missing."

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v4}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v3

    .line 613
    :cond_10
    if-nez v16, :cond_11

    .line 614
    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v4, "Required field \"is_team_folder\" missing."

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v4}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v3

    .line 616
    :cond_11
    if-nez v5, :cond_12

    .line 617
    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v4, "Required field \"name\" missing."

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v4}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v3

    .line 619
    :cond_12
    if-nez v6, :cond_13

    .line 620
    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v4, "Required field \"policy\" missing."

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v4}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v3

    .line 622
    :cond_13
    if-nez v7, :cond_14

    .line 623
    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v4, "Required field \"preview_url\" missing."

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v4}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v3

    .line 625
    :cond_14
    if-nez v8, :cond_15

    .line 626
    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v4, "Required field \"shared_folder_id\" missing."

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v4}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v3

    .line 628
    :cond_15
    if-nez v9, :cond_16

    .line 629
    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v4, "Required field \"time_invited\" missing."

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v4}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v3

    .line 631
    :cond_16
    new-instance v1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct/range {v1 .. v14}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;ZZLjava/lang/String;Lcom/dropbox/core/v2/sharing/FolderPolicy;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcom/dropbox/core/v2/users/Team;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;Ljava/util/List;)V

    .line 636
    .local v1, "value":Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    if-nez p2, :cond_17

    .line 637
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 639
    :cond_17
    return-object v1

    .line 634
    .end local v1    # "value":Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    .end local v2    # "f_accessType":Lcom/dropbox/core/v2/sharing/AccessLevel;
    .end local v5    # "f_name":Ljava/lang/String;
    .end local v6    # "f_policy":Lcom/dropbox/core/v2/sharing/FolderPolicy;
    .end local v7    # "f_previewUrl":Ljava/lang/String;
    .end local v8    # "f_sharedFolderId":Ljava/lang/String;
    .end local v9    # "f_timeInvited":Ljava/util/Date;
    .end local v10    # "f_ownerTeam":Lcom/dropbox/core/v2/users/Team;
    .end local v11    # "f_parentSharedFolderId":Ljava/lang/String;
    .end local v12    # "f_pathLower":Ljava/lang/String;
    .end local v13    # "f_linkMetadata":Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;
    .end local v14    # "f_permissions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/FolderPermission;>;"
    .end local v15    # "f_isInsideTeamFolder":Ljava/lang/Boolean;
    .end local v16    # "f_isTeamFolder":Ljava/lang/Boolean;
    :cond_18
    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "No subtype found that matches tag: \""

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v19, "\""

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v4}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v3
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
    .line 490
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 495
    if-nez p3, :cond_0

    .line 496
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 498
    :cond_0
    const-string v0, "access_type"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 499
    sget-object v0, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 500
    const-string v0, "is_inside_team_folder"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 501
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->isInsideTeamFolder:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 502
    const-string v0, "is_team_folder"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 503
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->isTeamFolder:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 504
    const-string v0, "name"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 505
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 506
    const-string v0, "policy"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 507
    sget-object v0, Lcom/dropbox/core/v2/sharing/FolderPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FolderPolicy$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/FolderPolicy$Serializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 508
    const-string v0, "preview_url"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 509
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->previewUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 510
    const-string v0, "shared_folder_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 511
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->sharedFolderId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 512
    const-string v0, "time_invited"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 513
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->timeInvited:Ljava/util/Date;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 514
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    if-eqz v0, :cond_1

    .line 515
    const-string v0, "owner_team"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 516
    sget-object v0, Lcom/dropbox/core/v2/users/Team$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/Team$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StructSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 518
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->parentSharedFolderId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 519
    const-string v0, "parent_shared_folder_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 520
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->parentSharedFolderId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 522
    :cond_2
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->pathLower:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 523
    const-string v0, "path_lower"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 524
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->pathLower:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 526
    :cond_3
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    if-eqz v0, :cond_4

    .line 527
    const-string v0, "link_metadata"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 528
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StructSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 530
    :cond_4
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->permissions:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 531
    const-string v0, "permissions"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 532
    sget-object v0, Lcom/dropbox/core/v2/sharing/FolderPermission$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FolderPermission$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->permissions:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 534
    :cond_5
    if-nez p3, :cond_6

    .line 535
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 537
    :cond_6
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
    .line 490
    check-cast p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
