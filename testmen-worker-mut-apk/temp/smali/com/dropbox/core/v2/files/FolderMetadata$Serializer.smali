.class Lcom/dropbox/core/v2/files/FolderMetadata$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "FolderMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/FolderMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/FolderMetadata;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/FolderMetadata$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 406
    new-instance v0, Lcom/dropbox/core/v2/files/FolderMetadata$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/FolderMetadata$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/FolderMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FolderMetadata$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 405
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/FolderMetadata;
    .locals 14
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "collapsed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 450
    const/4 v10, 0x0

    .line 451
    .local v10, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 452
    invoke-static {p1}, Lcom/dropbox/core/v2/files/FolderMetadata$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 453
    invoke-static {p1}, Lcom/dropbox/core/v2/files/FolderMetadata$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v10

    .line 454
    const-string v11, "folder"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 455
    const/4 v10, 0x0

    .line 458
    :cond_0
    if-nez v10, :cond_d

    .line 459
    const/4 v1, 0x0

    .line 460
    .local v1, "f_name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 461
    .local v2, "f_id":Ljava/lang/String;
    const/4 v3, 0x0

    .line 462
    .local v3, "f_pathLower":Ljava/lang/String;
    const/4 v4, 0x0

    .line 463
    .local v4, "f_pathDisplay":Ljava/lang/String;
    const/4 v5, 0x0

    .line 464
    .local v5, "f_parentSharedFolderId":Ljava/lang/String;
    const/4 v6, 0x0

    .line 465
    .local v6, "f_sharedFolderId":Ljava/lang/String;
    const/4 v7, 0x0

    .line 466
    .local v7, "f_sharingInfo":Lcom/dropbox/core/v2/files/FolderSharingInfo;
    const/4 v8, 0x0

    .line 467
    .local v8, "f_propertyGroups":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/properties/PropertyGroup;>;"
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v11

    sget-object v12, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v11, v12, :cond_9

    .line 468
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v9

    .line 469
    .local v9, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 470
    const-string v11, "name"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 471
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v11

    invoke-virtual {v11, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_name":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "f_name":Ljava/lang/String;
    goto :goto_0

    .line 473
    :cond_1
    const-string v11, "id"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 474
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v11

    invoke-virtual {v11, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_id":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2    # "f_id":Ljava/lang/String;
    goto :goto_0

    .line 476
    :cond_2
    const-string v11, "path_lower"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 477
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v11

    invoke-static {v11}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v11

    invoke-virtual {v11, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "f_pathLower":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3    # "f_pathLower":Ljava/lang/String;
    goto :goto_0

    .line 479
    :cond_3
    const-string v11, "path_display"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 480
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v11

    invoke-static {v11}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v11

    invoke-virtual {v11, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "f_pathDisplay":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4    # "f_pathDisplay":Ljava/lang/String;
    goto :goto_0

    .line 482
    :cond_4
    const-string v11, "parent_shared_folder_id"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 483
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v11

    invoke-static {v11}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v11

    invoke-virtual {v11, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "f_parentSharedFolderId":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .restart local v5    # "f_parentSharedFolderId":Ljava/lang/String;
    goto :goto_0

    .line 485
    :cond_5
    const-string v11, "shared_folder_id"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 486
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v11

    invoke-static {v11}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v11

    invoke-virtual {v11, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "f_sharedFolderId":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .restart local v6    # "f_sharedFolderId":Ljava/lang/String;
    goto/16 :goto_0

    .line 488
    :cond_6
    const-string v11, "sharing_info"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 489
    sget-object v11, Lcom/dropbox/core/v2/files/FolderSharingInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FolderSharingInfo$Serializer;

    invoke-static {v11}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v11

    invoke-virtual {v11, p1}, Lcom/dropbox/core/stone/StructSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "f_sharingInfo":Lcom/dropbox/core/v2/files/FolderSharingInfo;
    check-cast v7, Lcom/dropbox/core/v2/files/FolderSharingInfo;

    .restart local v7    # "f_sharingInfo":Lcom/dropbox/core/v2/files/FolderSharingInfo;
    goto/16 :goto_0

    .line 491
    :cond_7
    const-string v11, "property_groups"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 492
    sget-object v11, Lcom/dropbox/core/v2/properties/PropertyGroup$Serializer;->INSTANCE:Lcom/dropbox/core/v2/properties/PropertyGroup$Serializer;

    invoke-static {v11}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v11

    invoke-static {v11}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v11

    invoke-virtual {v11, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "f_propertyGroups":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/properties/PropertyGroup;>;"
    check-cast v8, Ljava/util/List;

    .restart local v8    # "f_propertyGroups":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/properties/PropertyGroup;>;"
    goto/16 :goto_0

    .line 495
    :cond_8
    invoke-static {p1}, Lcom/dropbox/core/v2/files/FolderMetadata$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto/16 :goto_0

    .line 498
    .end local v9    # "field":Ljava/lang/String;
    :cond_9
    if-nez v1, :cond_a

    .line 499
    new-instance v11, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v12, "Required field \"name\" missing."

    invoke-direct {v11, p1, v12}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v11

    .line 501
    :cond_a
    if-nez v2, :cond_b

    .line 502
    new-instance v11, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v12, "Required field \"id\" missing."

    invoke-direct {v11, p1, v12}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v11

    .line 504
    :cond_b
    new-instance v0, Lcom/dropbox/core/v2/files/FolderMetadata;

    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/v2/files/FolderMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/files/FolderSharingInfo;Ljava/util/List;)V

    .line 509
    .local v0, "value":Lcom/dropbox/core/v2/files/FolderMetadata;
    if-nez p2, :cond_c

    .line 510
    invoke-static {p1}, Lcom/dropbox/core/v2/files/FolderMetadata$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 512
    :cond_c
    return-object v0

    .line 507
    .end local v0    # "value":Lcom/dropbox/core/v2/files/FolderMetadata;
    .end local v1    # "f_name":Ljava/lang/String;
    .end local v2    # "f_id":Ljava/lang/String;
    .end local v3    # "f_pathLower":Ljava/lang/String;
    .end local v4    # "f_pathDisplay":Ljava/lang/String;
    .end local v5    # "f_parentSharedFolderId":Ljava/lang/String;
    .end local v6    # "f_sharedFolderId":Ljava/lang/String;
    .end local v7    # "f_sharingInfo":Lcom/dropbox/core/v2/files/FolderSharingInfo;
    .end local v8    # "f_propertyGroups":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/properties/PropertyGroup;>;"
    :cond_d
    new-instance v11, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No subtype found that matches tag: \""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, p1, v12}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v11
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
    .line 405
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/FolderMetadata$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/FolderMetadata;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/FolderMetadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/files/FolderMetadata;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 410
    if-nez p3, :cond_0

    .line 411
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 413
    :cond_0
    const-string v0, "folder"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/FolderMetadata$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 414
    const-string v0, "name"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 415
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/FolderMetadata;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 416
    const-string v0, "id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 417
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/FolderMetadata;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 418
    iget-object v0, p1, Lcom/dropbox/core/v2/files/FolderMetadata;->pathLower:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 419
    const-string v0, "path_lower"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 420
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/FolderMetadata;->pathLower:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 422
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/files/FolderMetadata;->pathDisplay:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 423
    const-string v0, "path_display"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 424
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/FolderMetadata;->pathDisplay:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 426
    :cond_2
    iget-object v0, p1, Lcom/dropbox/core/v2/files/FolderMetadata;->parentSharedFolderId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 427
    const-string v0, "parent_shared_folder_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 428
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/FolderMetadata;->parentSharedFolderId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 430
    :cond_3
    iget-object v0, p1, Lcom/dropbox/core/v2/files/FolderMetadata;->sharedFolderId:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 431
    const-string v0, "shared_folder_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 432
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/FolderMetadata;->sharedFolderId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 434
    :cond_4
    iget-object v0, p1, Lcom/dropbox/core/v2/files/FolderMetadata;->sharingInfo:Lcom/dropbox/core/v2/files/FolderSharingInfo;

    if-eqz v0, :cond_5

    .line 435
    const-string v0, "sharing_info"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 436
    sget-object v0, Lcom/dropbox/core/v2/files/FolderSharingInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FolderSharingInfo$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/FolderMetadata;->sharingInfo:Lcom/dropbox/core/v2/files/FolderSharingInfo;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StructSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 438
    :cond_5
    iget-object v0, p1, Lcom/dropbox/core/v2/files/FolderMetadata;->propertyGroups:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 439
    const-string v0, "property_groups"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 440
    sget-object v0, Lcom/dropbox/core/v2/properties/PropertyGroup$Serializer;->INSTANCE:Lcom/dropbox/core/v2/properties/PropertyGroup$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/FolderMetadata;->propertyGroups:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 442
    :cond_6
    if-nez p3, :cond_7

    .line 443
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 445
    :cond_7
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
    .line 405
    check-cast p1, Lcom/dropbox/core/v2/files/FolderMetadata;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/files/FolderMetadata$Serializer;->serialize(Lcom/dropbox/core/v2/files/FolderMetadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
