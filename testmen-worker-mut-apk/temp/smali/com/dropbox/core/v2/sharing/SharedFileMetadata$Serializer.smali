.class Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "SharedFileMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/SharedFileMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/SharedFileMetadata;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 520
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 519
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/SharedFileMetadata;
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
    .line 571
    const/16 v16, 0x0

    .line 572
    .local v16, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 573
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 574
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v16

    .line 576
    :cond_0
    if-nez v16, :cond_12

    .line 577
    const/4 v4, 0x0

    .line 578
    .local v4, "f_policy":Lcom/dropbox/core/v2/sharing/FolderPolicy;
    const/4 v5, 0x0

    .line 579
    .local v5, "f_previewUrl":Ljava/lang/String;
    const/4 v6, 0x0

    .line 580
    .local v6, "f_name":Ljava/lang/String;
    const/4 v7, 0x0

    .line 581
    .local v7, "f_id":Ljava/lang/String;
    const/4 v8, 0x0

    .line 582
    .local v8, "f_linkMetadata":Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;
    const/4 v9, 0x0

    .line 583
    .local v9, "f_permissions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/FilePermission;>;"
    const/4 v10, 0x0

    .line 584
    .local v10, "f_ownerTeam":Lcom/dropbox/core/v2/users/Team;
    const/4 v11, 0x0

    .line 585
    .local v11, "f_parentSharedFolderId":Ljava/lang/String;
    const/4 v12, 0x0

    .line 586
    .local v12, "f_pathLower":Ljava/lang/String;
    const/4 v13, 0x0

    .line 587
    .local v13, "f_pathDisplay":Ljava/lang/String;
    const/4 v14, 0x0

    .line 588
    .local v14, "f_timeInvited":Ljava/util/Date;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v17

    sget-object v18, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 589
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v15

    .line 590
    .local v15, "field":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 591
    const-string v17, "policy"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 592
    sget-object v17, Lcom/dropbox/core/v2/sharing/FolderPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FolderPolicy$Serializer;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/sharing/FolderPolicy$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "f_policy":Lcom/dropbox/core/v2/sharing/FolderPolicy;
    check-cast v4, Lcom/dropbox/core/v2/sharing/FolderPolicy;

    .restart local v4    # "f_policy":Lcom/dropbox/core/v2/sharing/FolderPolicy;
    goto :goto_0

    .line 594
    :cond_1
    const-string v17, "preview_url"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 595
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "f_previewUrl":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .restart local v5    # "f_previewUrl":Ljava/lang/String;
    goto :goto_0

    .line 597
    :cond_2
    const-string v17, "name"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 598
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "f_name":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .restart local v6    # "f_name":Ljava/lang/String;
    goto :goto_0

    .line 600
    :cond_3
    const-string v17, "id"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 601
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "f_id":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .restart local v7    # "f_id":Ljava/lang/String;
    goto :goto_0

    .line 603
    :cond_4
    const-string v17, "link_metadata"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 604
    sget-object v17, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Serializer;

    invoke-static/range {v17 .. v17}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/dropbox/core/stone/StructSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "f_linkMetadata":Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;
    check-cast v8, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    .restart local v8    # "f_linkMetadata":Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;
    goto/16 :goto_0

    .line 606
    :cond_5
    const-string v17, "permissions"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 607
    sget-object v17, Lcom/dropbox/core/v2/sharing/FilePermission$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FilePermission$Serializer;

    invoke-static/range {v17 .. v17}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "f_permissions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/FilePermission;>;"
    check-cast v9, Ljava/util/List;

    .restart local v9    # "f_permissions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/FilePermission;>;"
    goto/16 :goto_0

    .line 609
    :cond_6
    const-string v17, "owner_team"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 610
    sget-object v17, Lcom/dropbox/core/v2/users/Team$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/Team$Serializer;

    invoke-static/range {v17 .. v17}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/dropbox/core/stone/StructSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "f_ownerTeam":Lcom/dropbox/core/v2/users/Team;
    check-cast v10, Lcom/dropbox/core/v2/users/Team;

    .restart local v10    # "f_ownerTeam":Lcom/dropbox/core/v2/users/Team;
    goto/16 :goto_0

    .line 612
    :cond_7
    const-string v17, "parent_shared_folder_id"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 613
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "f_parentSharedFolderId":Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .restart local v11    # "f_parentSharedFolderId":Ljava/lang/String;
    goto/16 :goto_0

    .line 615
    :cond_8
    const-string v17, "path_lower"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 616
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "f_pathLower":Ljava/lang/String;
    check-cast v12, Ljava/lang/String;

    .restart local v12    # "f_pathLower":Ljava/lang/String;
    goto/16 :goto_0

    .line 618
    :cond_9
    const-string v17, "path_display"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 619
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "f_pathDisplay":Ljava/lang/String;
    check-cast v13, Ljava/lang/String;

    .restart local v13    # "f_pathDisplay":Ljava/lang/String;
    goto/16 :goto_0

    .line 621
    :cond_a
    const-string v17, "time_invited"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 622
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "f_timeInvited":Ljava/util/Date;
    check-cast v14, Ljava/util/Date;

    .restart local v14    # "f_timeInvited":Ljava/util/Date;
    goto/16 :goto_0

    .line 625
    :cond_b
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto/16 :goto_0

    .line 628
    .end local v15    # "field":Ljava/lang/String;
    :cond_c
    if-nez v4, :cond_d

    .line 629
    new-instance v17, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v18, "Required field \"policy\" missing."

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v17

    .line 631
    :cond_d
    if-nez v5, :cond_e

    .line 632
    new-instance v17, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v18, "Required field \"preview_url\" missing."

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v17

    .line 634
    :cond_e
    if-nez v6, :cond_f

    .line 635
    new-instance v17, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v18, "Required field \"name\" missing."

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v17

    .line 637
    :cond_f
    if-nez v7, :cond_10

    .line 638
    new-instance v17, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v18, "Required field \"id\" missing."

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v17

    .line 640
    :cond_10
    new-instance v3, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;

    invoke-direct/range {v3 .. v14}, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;-><init>(Lcom/dropbox/core/v2/sharing/FolderPolicy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;Ljava/util/List;Lcom/dropbox/core/v2/users/Team;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    .line 645
    .local v3, "value":Lcom/dropbox/core/v2/sharing/SharedFileMetadata;
    if-nez p2, :cond_11

    .line 646
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 648
    :cond_11
    return-object v3

    .line 643
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/SharedFileMetadata;
    .end local v4    # "f_policy":Lcom/dropbox/core/v2/sharing/FolderPolicy;
    .end local v5    # "f_previewUrl":Ljava/lang/String;
    .end local v6    # "f_name":Ljava/lang/String;
    .end local v7    # "f_id":Ljava/lang/String;
    .end local v8    # "f_linkMetadata":Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;
    .end local v9    # "f_permissions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/FilePermission;>;"
    .end local v10    # "f_ownerTeam":Lcom/dropbox/core/v2/users/Team;
    .end local v11    # "f_parentSharedFolderId":Ljava/lang/String;
    .end local v12    # "f_pathLower":Ljava/lang/String;
    .end local v13    # "f_pathDisplay":Ljava/lang/String;
    .end local v14    # "f_timeInvited":Ljava/util/Date;
    :cond_12
    new-instance v17, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "No subtype found that matches tag: \""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v17
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
    .line 519
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/SharedFileMetadata;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/SharedFileMetadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/SharedFileMetadata;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 524
    if-nez p3, :cond_0

    .line 525
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 527
    :cond_0
    const-string v0, "policy"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 528
    sget-object v0, Lcom/dropbox/core/v2/sharing/FolderPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FolderPolicy$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/FolderPolicy$Serializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 529
    const-string v0, "preview_url"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 530
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->previewUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 531
    const-string v0, "name"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 532
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 533
    const-string v0, "id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 534
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 535
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    if-eqz v0, :cond_1

    .line 536
    const-string v0, "link_metadata"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 537
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StructSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 539
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->permissions:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 540
    const-string v0, "permissions"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 541
    sget-object v0, Lcom/dropbox/core/v2/sharing/FilePermission$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FilePermission$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->permissions:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 543
    :cond_2
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    if-eqz v0, :cond_3

    .line 544
    const-string v0, "owner_team"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 545
    sget-object v0, Lcom/dropbox/core/v2/users/Team$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/Team$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StructSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 547
    :cond_3
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->parentSharedFolderId:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 548
    const-string v0, "parent_shared_folder_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 549
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->parentSharedFolderId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 551
    :cond_4
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->pathLower:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 552
    const-string v0, "path_lower"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 553
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->pathLower:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 555
    :cond_5
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->pathDisplay:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 556
    const-string v0, "path_display"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 557
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->pathDisplay:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 559
    :cond_6
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->timeInvited:Ljava/util/Date;

    if-eqz v0, :cond_7

    .line 560
    const-string v0, "time_invited"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 561
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->timeInvited:Ljava/util/Date;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 563
    :cond_7
    if-nez p3, :cond_8

    .line 564
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 566
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
    .line 519
    check-cast p1, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharedFileMetadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
