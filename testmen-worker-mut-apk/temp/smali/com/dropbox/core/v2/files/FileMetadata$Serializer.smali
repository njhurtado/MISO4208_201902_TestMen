.class Lcom/dropbox/core/v2/files/FileMetadata$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "FileMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/FileMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/FileMetadata;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/FileMetadata$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 627
    new-instance v0, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FileMetadata$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 626
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/FileMetadata;
    .locals 22
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "collapsed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 687
    const/16 v20, 0x0

    .line 688
    .local v20, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 689
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 690
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v20

    .line 691
    const-string v8, "file"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 692
    const/16 v20, 0x0

    .line 695
    :cond_0
    if-nez v20, :cond_17

    .line 696
    const/4 v3, 0x0

    .line 697
    .local v3, "f_name":Ljava/lang/String;
    const/4 v4, 0x0

    .line 698
    .local v4, "f_id":Ljava/lang/String;
    const/4 v5, 0x0

    .line 699
    .local v5, "f_clientModified":Ljava/util/Date;
    const/4 v6, 0x0

    .line 700
    .local v6, "f_serverModified":Ljava/util/Date;
    const/4 v7, 0x0

    .line 701
    .local v7, "f_rev":Ljava/lang/String;
    const/16 v18, 0x0

    .line 702
    .local v18, "f_size":Ljava/lang/Long;
    const/4 v10, 0x0

    .line 703
    .local v10, "f_pathLower":Ljava/lang/String;
    const/4 v11, 0x0

    .line 704
    .local v11, "f_pathDisplay":Ljava/lang/String;
    const/4 v12, 0x0

    .line 705
    .local v12, "f_parentSharedFolderId":Ljava/lang/String;
    const/4 v13, 0x0

    .line 706
    .local v13, "f_mediaInfo":Lcom/dropbox/core/v2/files/MediaInfo;
    const/4 v14, 0x0

    .line 707
    .local v14, "f_sharingInfo":Lcom/dropbox/core/v2/files/FileSharingInfo;
    const/4 v15, 0x0

    .line 708
    .local v15, "f_propertyGroups":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/properties/PropertyGroup;>;"
    const/16 v16, 0x0

    .line 709
    .local v16, "f_hasExplicitSharedMembers":Ljava/lang/Boolean;
    const/16 v17, 0x0

    .line 710
    .local v17, "f_contentHash":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v8

    sget-object v9, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v8, v9, :cond_f

    .line 711
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v19

    .line 712
    .local v19, "field":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 713
    const-string v8, "name"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 714
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "f_name":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3    # "f_name":Ljava/lang/String;
    goto :goto_0

    .line 716
    :cond_1
    const-string v8, "id"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 717
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "f_id":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4    # "f_id":Ljava/lang/String;
    goto :goto_0

    .line 719
    :cond_2
    const-string v8, "client_modified"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 720
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "f_clientModified":Ljava/util/Date;
    check-cast v5, Ljava/util/Date;

    .restart local v5    # "f_clientModified":Ljava/util/Date;
    goto :goto_0

    .line 722
    :cond_3
    const-string v8, "server_modified"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 723
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "f_serverModified":Ljava/util/Date;
    check-cast v6, Ljava/util/Date;

    .restart local v6    # "f_serverModified":Ljava/util/Date;
    goto :goto_0

    .line 725
    :cond_4
    const-string v8, "rev"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 726
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "f_rev":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .restart local v7    # "f_rev":Ljava/lang/String;
    goto/16 :goto_0

    .line 728
    :cond_5
    const-string v8, "size"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 729
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "f_size":Ljava/lang/Long;
    check-cast v18, Ljava/lang/Long;

    .restart local v18    # "f_size":Ljava/lang/Long;
    goto/16 :goto_0

    .line 731
    :cond_6
    const-string v8, "path_lower"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 732
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v8

    invoke-static {v8}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "f_pathLower":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .restart local v10    # "f_pathLower":Ljava/lang/String;
    goto/16 :goto_0

    .line 734
    :cond_7
    const-string v8, "path_display"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 735
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v8

    invoke-static {v8}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "f_pathDisplay":Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .restart local v11    # "f_pathDisplay":Ljava/lang/String;
    goto/16 :goto_0

    .line 737
    :cond_8
    const-string v8, "parent_shared_folder_id"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 738
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v8

    invoke-static {v8}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "f_parentSharedFolderId":Ljava/lang/String;
    check-cast v12, Ljava/lang/String;

    .restart local v12    # "f_parentSharedFolderId":Ljava/lang/String;
    goto/16 :goto_0

    .line 740
    :cond_9
    const-string v8, "media_info"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 741
    sget-object v8, Lcom/dropbox/core/v2/files/MediaInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/MediaInfo$Serializer;

    invoke-static {v8}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "f_mediaInfo":Lcom/dropbox/core/v2/files/MediaInfo;
    check-cast v13, Lcom/dropbox/core/v2/files/MediaInfo;

    .restart local v13    # "f_mediaInfo":Lcom/dropbox/core/v2/files/MediaInfo;
    goto/16 :goto_0

    .line 743
    :cond_a
    const-string v8, "sharing_info"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 744
    sget-object v8, Lcom/dropbox/core/v2/files/FileSharingInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FileSharingInfo$Serializer;

    invoke-static {v8}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/dropbox/core/stone/StructSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "f_sharingInfo":Lcom/dropbox/core/v2/files/FileSharingInfo;
    check-cast v14, Lcom/dropbox/core/v2/files/FileSharingInfo;

    .restart local v14    # "f_sharingInfo":Lcom/dropbox/core/v2/files/FileSharingInfo;
    goto/16 :goto_0

    .line 746
    :cond_b
    const-string v8, "property_groups"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 747
    sget-object v8, Lcom/dropbox/core/v2/properties/PropertyGroup$Serializer;->INSTANCE:Lcom/dropbox/core/v2/properties/PropertyGroup$Serializer;

    invoke-static {v8}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v8

    invoke-static {v8}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "f_propertyGroups":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/properties/PropertyGroup;>;"
    check-cast v15, Ljava/util/List;

    .restart local v15    # "f_propertyGroups":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/properties/PropertyGroup;>;"
    goto/16 :goto_0

    .line 749
    :cond_c
    const-string v8, "has_explicit_shared_members"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 750
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v8

    invoke-static {v8}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "f_hasExplicitSharedMembers":Ljava/lang/Boolean;
    check-cast v16, Ljava/lang/Boolean;

    .restart local v16    # "f_hasExplicitSharedMembers":Ljava/lang/Boolean;
    goto/16 :goto_0

    .line 752
    :cond_d
    const-string v8, "content_hash"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 753
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v8

    invoke-static {v8}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "f_contentHash":Ljava/lang/String;
    check-cast v17, Ljava/lang/String;

    .restart local v17    # "f_contentHash":Ljava/lang/String;
    goto/16 :goto_0

    .line 756
    :cond_e
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto/16 :goto_0

    .line 759
    .end local v19    # "field":Ljava/lang/String;
    :cond_f
    if-nez v3, :cond_10

    .line 760
    new-instance v8, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v9, "Required field \"name\" missing."

    move-object/from16 v0, p1

    invoke-direct {v8, v0, v9}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v8

    .line 762
    :cond_10
    if-nez v4, :cond_11

    .line 763
    new-instance v8, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v9, "Required field \"id\" missing."

    move-object/from16 v0, p1

    invoke-direct {v8, v0, v9}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v8

    .line 765
    :cond_11
    if-nez v5, :cond_12

    .line 766
    new-instance v8, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v9, "Required field \"client_modified\" missing."

    move-object/from16 v0, p1

    invoke-direct {v8, v0, v9}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v8

    .line 768
    :cond_12
    if-nez v6, :cond_13

    .line 769
    new-instance v8, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v9, "Required field \"server_modified\" missing."

    move-object/from16 v0, p1

    invoke-direct {v8, v0, v9}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v8

    .line 771
    :cond_13
    if-nez v7, :cond_14

    .line 772
    new-instance v8, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v9, "Required field \"rev\" missing."

    move-object/from16 v0, p1

    invoke-direct {v8, v0, v9}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v8

    .line 774
    :cond_14
    if-nez v18, :cond_15

    .line 775
    new-instance v8, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v9, "Required field \"size\" missing."

    move-object/from16 v0, p1

    invoke-direct {v8, v0, v9}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v8

    .line 777
    :cond_15
    new-instance v2, Lcom/dropbox/core/v2/files/FileMetadata;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct/range {v2 .. v17}, Lcom/dropbox/core/v2/files/FileMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/files/MediaInfo;Lcom/dropbox/core/v2/files/FileSharingInfo;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 782
    .local v2, "value":Lcom/dropbox/core/v2/files/FileMetadata;
    if-nez p2, :cond_16

    .line 783
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 785
    :cond_16
    return-object v2

    .line 780
    .end local v2    # "value":Lcom/dropbox/core/v2/files/FileMetadata;
    .end local v3    # "f_name":Ljava/lang/String;
    .end local v4    # "f_id":Ljava/lang/String;
    .end local v5    # "f_clientModified":Ljava/util/Date;
    .end local v6    # "f_serverModified":Ljava/util/Date;
    .end local v7    # "f_rev":Ljava/lang/String;
    .end local v10    # "f_pathLower":Ljava/lang/String;
    .end local v11    # "f_pathDisplay":Ljava/lang/String;
    .end local v12    # "f_parentSharedFolderId":Ljava/lang/String;
    .end local v13    # "f_mediaInfo":Lcom/dropbox/core/v2/files/MediaInfo;
    .end local v14    # "f_sharingInfo":Lcom/dropbox/core/v2/files/FileSharingInfo;
    .end local v15    # "f_propertyGroups":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/properties/PropertyGroup;>;"
    .end local v16    # "f_hasExplicitSharedMembers":Ljava/lang/Boolean;
    .end local v17    # "f_contentHash":Ljava/lang/String;
    .end local v18    # "f_size":Ljava/lang/Long;
    :cond_17
    new-instance v8, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "No subtype found that matches tag: \""

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v21, "\""

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-direct {v8, v0, v9}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v8
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
    .line 626
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/FileMetadata;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/FileMetadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 4
    .param p1, "value"    # Lcom/dropbox/core/v2/files/FileMetadata;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 631
    if-nez p3, :cond_0

    .line 632
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 634
    :cond_0
    const-string v0, "file"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 635
    const-string v0, "name"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 636
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/FileMetadata;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 637
    const-string v0, "id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 638
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/FileMetadata;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 639
    const-string v0, "client_modified"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 640
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/FileMetadata;->clientModified:Ljava/util/Date;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 641
    const-string v0, "server_modified"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 642
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/FileMetadata;->serverModified:Ljava/util/Date;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 643
    const-string v0, "rev"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 644
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/FileMetadata;->rev:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 645
    const-string v0, "size"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 646
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-wide v2, p1, Lcom/dropbox/core/v2/files/FileMetadata;->size:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 647
    iget-object v0, p1, Lcom/dropbox/core/v2/files/FileMetadata;->pathLower:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 648
    const-string v0, "path_lower"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 649
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/FileMetadata;->pathLower:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 651
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/files/FileMetadata;->pathDisplay:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 652
    const-string v0, "path_display"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 653
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/FileMetadata;->pathDisplay:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 655
    :cond_2
    iget-object v0, p1, Lcom/dropbox/core/v2/files/FileMetadata;->parentSharedFolderId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 656
    const-string v0, "parent_shared_folder_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 657
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/FileMetadata;->parentSharedFolderId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 659
    :cond_3
    iget-object v0, p1, Lcom/dropbox/core/v2/files/FileMetadata;->mediaInfo:Lcom/dropbox/core/v2/files/MediaInfo;

    if-eqz v0, :cond_4

    .line 660
    const-string v0, "media_info"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 661
    sget-object v0, Lcom/dropbox/core/v2/files/MediaInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/MediaInfo$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/FileMetadata;->mediaInfo:Lcom/dropbox/core/v2/files/MediaInfo;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 663
    :cond_4
    iget-object v0, p1, Lcom/dropbox/core/v2/files/FileMetadata;->sharingInfo:Lcom/dropbox/core/v2/files/FileSharingInfo;

    if-eqz v0, :cond_5

    .line 664
    const-string v0, "sharing_info"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 665
    sget-object v0, Lcom/dropbox/core/v2/files/FileSharingInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FileSharingInfo$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/FileMetadata;->sharingInfo:Lcom/dropbox/core/v2/files/FileSharingInfo;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StructSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 667
    :cond_5
    iget-object v0, p1, Lcom/dropbox/core/v2/files/FileMetadata;->propertyGroups:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 668
    const-string v0, "property_groups"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 669
    sget-object v0, Lcom/dropbox/core/v2/properties/PropertyGroup$Serializer;->INSTANCE:Lcom/dropbox/core/v2/properties/PropertyGroup$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/FileMetadata;->propertyGroups:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 671
    :cond_6
    iget-object v0, p1, Lcom/dropbox/core/v2/files/FileMetadata;->hasExplicitSharedMembers:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 672
    const-string v0, "has_explicit_shared_members"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 673
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/FileMetadata;->hasExplicitSharedMembers:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 675
    :cond_7
    iget-object v0, p1, Lcom/dropbox/core/v2/files/FileMetadata;->contentHash:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 676
    const-string v0, "content_hash"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 677
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/FileMetadata;->contentHash:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 679
    :cond_8
    if-nez p3, :cond_9

    .line 680
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 682
    :cond_9
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
    .line 626
    check-cast p1, Lcom/dropbox/core/v2/files/FileMetadata;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->serialize(Lcom/dropbox/core/v2/files/FileMetadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
