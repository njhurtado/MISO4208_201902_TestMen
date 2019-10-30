.class Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "FileLinkMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/FileLinkMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/FileLinkMetadata;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 454
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 453
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/FileLinkMetadata;
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
    .line 504
    const/16 v18, 0x0

    .line 505
    .local v18, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 506
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 507
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v18

    .line 508
    const-string v10, "file"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 509
    const/16 v18, 0x0

    .line 512
    :cond_0
    if-nez v18, :cond_16

    .line 513
    const/4 v4, 0x0

    .line 514
    .local v4, "f_url":Ljava/lang/String;
    const/4 v5, 0x0

    .line 515
    .local v5, "f_name":Ljava/lang/String;
    const/4 v6, 0x0

    .line 516
    .local v6, "f_linkPermissions":Lcom/dropbox/core/v2/sharing/LinkPermissions;
    const/4 v7, 0x0

    .line 517
    .local v7, "f_clientModified":Ljava/util/Date;
    const/4 v8, 0x0

    .line 518
    .local v8, "f_serverModified":Ljava/util/Date;
    const/4 v9, 0x0

    .line 519
    .local v9, "f_rev":Ljava/lang/String;
    const/4 v2, 0x0

    .line 520
    .local v2, "f_size":Ljava/lang/Long;
    const/4 v12, 0x0

    .line 521
    .local v12, "f_id":Ljava/lang/String;
    const/4 v13, 0x0

    .line 522
    .local v13, "f_expires":Ljava/util/Date;
    const/4 v14, 0x0

    .line 523
    .local v14, "f_pathLower":Ljava/lang/String;
    const/4 v15, 0x0

    .line 524
    .local v15, "f_teamMemberInfo":Lcom/dropbox/core/v2/sharing/TeamMemberInfo;
    const/16 v16, 0x0

    .line 525
    .local v16, "f_contentOwnerTeamInfo":Lcom/dropbox/core/v2/users/Team;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v10

    sget-object v11, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v10, v11, :cond_d

    .line 526
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v17

    .line 527
    .local v17, "field":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 528
    const-string v10, "url"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 529
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "f_url":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4    # "f_url":Ljava/lang/String;
    goto :goto_0

    .line 531
    :cond_1
    const-string v10, "name"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 532
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "f_name":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .restart local v5    # "f_name":Ljava/lang/String;
    goto :goto_0

    .line 534
    :cond_2
    const-string v10, "link_permissions"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 535
    sget-object v10, Lcom/dropbox/core/v2/sharing/LinkPermissions$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkPermissions$Serializer;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/dropbox/core/v2/sharing/LinkPermissions$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "f_linkPermissions":Lcom/dropbox/core/v2/sharing/LinkPermissions;
    check-cast v6, Lcom/dropbox/core/v2/sharing/LinkPermissions;

    .restart local v6    # "f_linkPermissions":Lcom/dropbox/core/v2/sharing/LinkPermissions;
    goto :goto_0

    .line 537
    :cond_3
    const-string v10, "client_modified"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 538
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "f_clientModified":Ljava/util/Date;
    check-cast v7, Ljava/util/Date;

    .restart local v7    # "f_clientModified":Ljava/util/Date;
    goto :goto_0

    .line 540
    :cond_4
    const-string v10, "server_modified"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 541
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "f_serverModified":Ljava/util/Date;
    check-cast v8, Ljava/util/Date;

    .restart local v8    # "f_serverModified":Ljava/util/Date;
    goto :goto_0

    .line 543
    :cond_5
    const-string v10, "rev"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 544
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "f_rev":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .restart local v9    # "f_rev":Ljava/lang/String;
    goto/16 :goto_0

    .line 546
    :cond_6
    const-string v10, "size"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 547
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_size":Ljava/lang/Long;
    check-cast v2, Ljava/lang/Long;

    .restart local v2    # "f_size":Ljava/lang/Long;
    goto/16 :goto_0

    .line 549
    :cond_7
    const-string v10, "id"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 550
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v10

    invoke-static {v10}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "f_id":Ljava/lang/String;
    check-cast v12, Ljava/lang/String;

    .restart local v12    # "f_id":Ljava/lang/String;
    goto/16 :goto_0

    .line 552
    :cond_8
    const-string v10, "expires"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 553
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v10

    invoke-static {v10}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "f_expires":Ljava/util/Date;
    check-cast v13, Ljava/util/Date;

    .restart local v13    # "f_expires":Ljava/util/Date;
    goto/16 :goto_0

    .line 555
    :cond_9
    const-string v10, "path_lower"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 556
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v10

    invoke-static {v10}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "f_pathLower":Ljava/lang/String;
    check-cast v14, Ljava/lang/String;

    .restart local v14    # "f_pathLower":Ljava/lang/String;
    goto/16 :goto_0

    .line 558
    :cond_a
    const-string v10, "team_member_info"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 559
    sget-object v10, Lcom/dropbox/core/v2/sharing/TeamMemberInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/TeamMemberInfo$Serializer;

    invoke-static {v10}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/dropbox/core/stone/StructSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "f_teamMemberInfo":Lcom/dropbox/core/v2/sharing/TeamMemberInfo;
    check-cast v15, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;

    .restart local v15    # "f_teamMemberInfo":Lcom/dropbox/core/v2/sharing/TeamMemberInfo;
    goto/16 :goto_0

    .line 561
    :cond_b
    const-string v10, "content_owner_team_info"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 562
    sget-object v10, Lcom/dropbox/core/v2/users/Team$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/Team$Serializer;

    invoke-static {v10}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/dropbox/core/stone/StructSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "f_contentOwnerTeamInfo":Lcom/dropbox/core/v2/users/Team;
    check-cast v16, Lcom/dropbox/core/v2/users/Team;

    .restart local v16    # "f_contentOwnerTeamInfo":Lcom/dropbox/core/v2/users/Team;
    goto/16 :goto_0

    .line 565
    :cond_c
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto/16 :goto_0

    .line 568
    .end local v17    # "field":Ljava/lang/String;
    :cond_d
    if-nez v4, :cond_e

    .line 569
    new-instance v10, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v11, "Required field \"url\" missing."

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v11}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v10

    .line 571
    :cond_e
    if-nez v5, :cond_f

    .line 572
    new-instance v10, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v11, "Required field \"name\" missing."

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v11}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v10

    .line 574
    :cond_f
    if-nez v6, :cond_10

    .line 575
    new-instance v10, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v11, "Required field \"link_permissions\" missing."

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v11}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v10

    .line 577
    :cond_10
    if-nez v7, :cond_11

    .line 578
    new-instance v10, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v11, "Required field \"client_modified\" missing."

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v11}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v10

    .line 580
    :cond_11
    if-nez v8, :cond_12

    .line 581
    new-instance v10, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v11, "Required field \"server_modified\" missing."

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v11}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v10

    .line 583
    :cond_12
    if-nez v9, :cond_13

    .line 584
    new-instance v10, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v11, "Required field \"rev\" missing."

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v11}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v10

    .line 586
    :cond_13
    if-nez v2, :cond_14

    .line 587
    new-instance v10, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v11, "Required field \"size\" missing."

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v11}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v10

    .line 589
    :cond_14
    new-instance v3, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct/range {v3 .. v16}, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/LinkPermissions;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;JLjava/lang/String;Ljava/util/Date;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/TeamMemberInfo;Lcom/dropbox/core/v2/users/Team;)V

    .line 594
    .local v3, "value":Lcom/dropbox/core/v2/sharing/FileLinkMetadata;
    if-nez p2, :cond_15

    .line 595
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 597
    :cond_15
    return-object v3

    .line 592
    .end local v2    # "f_size":Ljava/lang/Long;
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/FileLinkMetadata;
    .end local v4    # "f_url":Ljava/lang/String;
    .end local v5    # "f_name":Ljava/lang/String;
    .end local v6    # "f_linkPermissions":Lcom/dropbox/core/v2/sharing/LinkPermissions;
    .end local v7    # "f_clientModified":Ljava/util/Date;
    .end local v8    # "f_serverModified":Ljava/util/Date;
    .end local v9    # "f_rev":Ljava/lang/String;
    .end local v12    # "f_id":Ljava/lang/String;
    .end local v13    # "f_expires":Ljava/util/Date;
    .end local v14    # "f_pathLower":Ljava/lang/String;
    .end local v15    # "f_teamMemberInfo":Lcom/dropbox/core/v2/sharing/TeamMemberInfo;
    .end local v16    # "f_contentOwnerTeamInfo":Lcom/dropbox/core/v2/users/Team;
    :cond_16
    new-instance v10, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "No subtype found that matches tag: \""

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v19, "\""

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v11}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v10
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
    .line 453
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/FileLinkMetadata;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/FileLinkMetadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 4
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/FileLinkMetadata;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 458
    if-nez p3, :cond_0

    .line 459
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 461
    :cond_0
    const-string v0, "file"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 462
    const-string v0, "url"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 463
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 464
    const-string v0, "name"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 465
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 466
    const-string v0, "link_permissions"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 467
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkPermissions$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkPermissions$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->linkPermissions:Lcom/dropbox/core/v2/sharing/LinkPermissions;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/LinkPermissions$Serializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 468
    const-string v0, "client_modified"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 469
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->clientModified:Ljava/util/Date;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 470
    const-string v0, "server_modified"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 471
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->serverModified:Ljava/util/Date;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 472
    const-string v0, "rev"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 473
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->rev:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 474
    const-string v0, "size"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 475
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-wide v2, p1, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->size:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 476
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->id:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 477
    const-string v0, "id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 478
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 480
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->expires:Ljava/util/Date;

    if-eqz v0, :cond_2

    .line 481
    const-string v0, "expires"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 482
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->expires:Ljava/util/Date;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 484
    :cond_2
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->pathLower:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 485
    const-string v0, "path_lower"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 486
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->pathLower:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 488
    :cond_3
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->teamMemberInfo:Lcom/dropbox/core/v2/sharing/TeamMemberInfo;

    if-eqz v0, :cond_4

    .line 489
    const-string v0, "team_member_info"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 490
    sget-object v0, Lcom/dropbox/core/v2/sharing/TeamMemberInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/TeamMemberInfo$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->teamMemberInfo:Lcom/dropbox/core/v2/sharing/TeamMemberInfo;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StructSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 492
    :cond_4
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->contentOwnerTeamInfo:Lcom/dropbox/core/v2/users/Team;

    if-eqz v0, :cond_5

    .line 493
    const-string v0, "content_owner_team_info"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 494
    sget-object v0, Lcom/dropbox/core/v2/users/Team$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/Team$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->contentOwnerTeamInfo:Lcom/dropbox/core/v2/users/Team;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StructSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 496
    :cond_5
    if-nez p3, :cond_6

    .line 497
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 499
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
    .line 453
    check-cast p1, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/FileLinkMetadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
