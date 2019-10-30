.class Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "SharedLinkMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 384
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
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
    .line 433
    const/4 v10, 0x0

    .line 434
    .local v10, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 435
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 436
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v10

    .line 437
    const-string v11, ""

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 438
    const/4 v10, 0x0

    .line 441
    :cond_0
    if-nez v10, :cond_e

    .line 442
    const/4 v1, 0x0

    .line 443
    .local v1, "f_url":Ljava/lang/String;
    const/4 v2, 0x0

    .line 444
    .local v2, "f_name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 445
    .local v3, "f_linkPermissions":Lcom/dropbox/core/v2/sharing/LinkPermissions;
    const/4 v4, 0x0

    .line 446
    .local v4, "f_id":Ljava/lang/String;
    const/4 v5, 0x0

    .line 447
    .local v5, "f_expires":Ljava/util/Date;
    const/4 v6, 0x0

    .line 448
    .local v6, "f_pathLower":Ljava/lang/String;
    const/4 v7, 0x0

    .line 449
    .local v7, "f_teamMemberInfo":Lcom/dropbox/core/v2/sharing/TeamMemberInfo;
    const/4 v8, 0x0

    .line 450
    .local v8, "f_contentOwnerTeamInfo":Lcom/dropbox/core/v2/users/Team;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v11

    sget-object v12, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v11, v12, :cond_9

    .line 451
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v9

    .line 452
    .local v9, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 453
    const-string v11, "url"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 454
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v11

    invoke-virtual {v11, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_url":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "f_url":Ljava/lang/String;
    goto :goto_0

    .line 456
    :cond_1
    const-string v11, "name"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 457
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v11

    invoke-virtual {v11, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_name":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2    # "f_name":Ljava/lang/String;
    goto :goto_0

    .line 459
    :cond_2
    const-string v11, "link_permissions"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 460
    sget-object v11, Lcom/dropbox/core/v2/sharing/LinkPermissions$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkPermissions$Serializer;

    invoke-virtual {v11, p1}, Lcom/dropbox/core/v2/sharing/LinkPermissions$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "f_linkPermissions":Lcom/dropbox/core/v2/sharing/LinkPermissions;
    check-cast v3, Lcom/dropbox/core/v2/sharing/LinkPermissions;

    .restart local v3    # "f_linkPermissions":Lcom/dropbox/core/v2/sharing/LinkPermissions;
    goto :goto_0

    .line 462
    :cond_3
    const-string v11, "id"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 463
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v11

    invoke-static {v11}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v11

    invoke-virtual {v11, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "f_id":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4    # "f_id":Ljava/lang/String;
    goto :goto_0

    .line 465
    :cond_4
    const-string v11, "expires"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 466
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v11

    invoke-static {v11}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v11

    invoke-virtual {v11, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "f_expires":Ljava/util/Date;
    check-cast v5, Ljava/util/Date;

    .restart local v5    # "f_expires":Ljava/util/Date;
    goto :goto_0

    .line 468
    :cond_5
    const-string v11, "path_lower"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 469
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v11

    invoke-static {v11}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v11

    invoke-virtual {v11, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "f_pathLower":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .restart local v6    # "f_pathLower":Ljava/lang/String;
    goto/16 :goto_0

    .line 471
    :cond_6
    const-string v11, "team_member_info"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 472
    sget-object v11, Lcom/dropbox/core/v2/sharing/TeamMemberInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/TeamMemberInfo$Serializer;

    invoke-static {v11}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v11

    invoke-virtual {v11, p1}, Lcom/dropbox/core/stone/StructSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "f_teamMemberInfo":Lcom/dropbox/core/v2/sharing/TeamMemberInfo;
    check-cast v7, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;

    .restart local v7    # "f_teamMemberInfo":Lcom/dropbox/core/v2/sharing/TeamMemberInfo;
    goto/16 :goto_0

    .line 474
    :cond_7
    const-string v11, "content_owner_team_info"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 475
    sget-object v11, Lcom/dropbox/core/v2/users/Team$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/Team$Serializer;

    invoke-static {v11}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v11

    invoke-virtual {v11, p1}, Lcom/dropbox/core/stone/StructSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "f_contentOwnerTeamInfo":Lcom/dropbox/core/v2/users/Team;
    check-cast v8, Lcom/dropbox/core/v2/users/Team;

    .restart local v8    # "f_contentOwnerTeamInfo":Lcom/dropbox/core/v2/users/Team;
    goto/16 :goto_0

    .line 478
    :cond_8
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto/16 :goto_0

    .line 481
    .end local v9    # "field":Ljava/lang/String;
    :cond_9
    if-nez v1, :cond_a

    .line 482
    new-instance v11, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v12, "Required field \"url\" missing."

    invoke-direct {v11, p1, v12}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v11

    .line 484
    :cond_a
    if-nez v2, :cond_b

    .line 485
    new-instance v11, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v12, "Required field \"name\" missing."

    invoke-direct {v11, p1, v12}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v11

    .line 487
    :cond_b
    if-nez v3, :cond_c

    .line 488
    new-instance v11, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v12, "Required field \"link_permissions\" missing."

    invoke-direct {v11, p1, v12}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v11

    .line 490
    :cond_c
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;

    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/LinkPermissions;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/TeamMemberInfo;Lcom/dropbox/core/v2/users/Team;)V

    .line 504
    .end local v1    # "f_url":Ljava/lang/String;
    .end local v2    # "f_name":Ljava/lang/String;
    .end local v3    # "f_linkPermissions":Lcom/dropbox/core/v2/sharing/LinkPermissions;
    .end local v4    # "f_id":Ljava/lang/String;
    .end local v5    # "f_expires":Ljava/util/Date;
    .end local v6    # "f_pathLower":Ljava/lang/String;
    .end local v7    # "f_teamMemberInfo":Lcom/dropbox/core/v2/sharing/TeamMemberInfo;
    .end local v8    # "f_contentOwnerTeamInfo":Lcom/dropbox/core/v2/users/Team;
    .local v0, "value":Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    :goto_1
    if-nez p2, :cond_d

    .line 505
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 507
    :cond_d
    return-object v0

    .line 492
    .end local v0    # "value":Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    :cond_e
    const-string v11, ""

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 493
    sget-object v11, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Serializer;

    const/4 v12, 0x1

    invoke-virtual {v11, p1, v12}, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;

    move-result-object v0

    .restart local v0    # "value":Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    goto :goto_1

    .line 495
    .end local v0    # "value":Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    :cond_f
    const-string v11, "file"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 496
    sget-object v11, Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Serializer;

    const/4 v12, 0x1

    invoke-virtual {v11, p1, v12}, Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/FileLinkMetadata;

    move-result-object v0

    .restart local v0    # "value":Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    goto :goto_1

    .line 498
    .end local v0    # "value":Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    :cond_10
    const-string v11, "folder"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 499
    sget-object v11, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FolderLinkMetadata$Serializer;

    const/4 v12, 0x1

    invoke-virtual {v11, p1, v12}, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;

    move-result-object v0

    .restart local v0    # "value":Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    goto :goto_1

    .line 502
    .end local v0    # "value":Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    :cond_11
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
    .line 383
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 388
    instance-of v0, p1, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;

    if-eqz v0, :cond_1

    .line 389
    sget-object v0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Serializer;

    check-cast p1, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;

    .end local p1    # "value":Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    invoke-virtual {v0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/FileLinkMetadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 392
    .restart local p1    # "value":Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    :cond_1
    instance-of v0, p1, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;

    if-eqz v0, :cond_2

    .line 393
    sget-object v0, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FolderLinkMetadata$Serializer;

    check-cast p1, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;

    .end local p1    # "value":Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    invoke-virtual {v0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    goto :goto_0

    .line 396
    .restart local p1    # "value":Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    :cond_2
    if-nez p3, :cond_3

    .line 397
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 399
    :cond_3
    const-string v0, "url"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 400
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 401
    const-string v0, "name"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 402
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 403
    const-string v0, "link_permissions"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 404
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkPermissions$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkPermissions$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->linkPermissions:Lcom/dropbox/core/v2/sharing/LinkPermissions;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/LinkPermissions$Serializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 405
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->id:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 406
    const-string v0, "id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 407
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 409
    :cond_4
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->expires:Ljava/util/Date;

    if-eqz v0, :cond_5

    .line 410
    const-string v0, "expires"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 411
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->expires:Ljava/util/Date;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 413
    :cond_5
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->pathLower:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 414
    const-string v0, "path_lower"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 415
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->pathLower:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 417
    :cond_6
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->teamMemberInfo:Lcom/dropbox/core/v2/sharing/TeamMemberInfo;

    if-eqz v0, :cond_7

    .line 418
    const-string v0, "team_member_info"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 419
    sget-object v0, Lcom/dropbox/core/v2/sharing/TeamMemberInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/TeamMemberInfo$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->teamMemberInfo:Lcom/dropbox/core/v2/sharing/TeamMemberInfo;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StructSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 421
    :cond_7
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->contentOwnerTeamInfo:Lcom/dropbox/core/v2/users/Team;

    if-eqz v0, :cond_8

    .line 422
    const-string v0, "content_owner_team_info"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 423
    sget-object v0, Lcom/dropbox/core/v2/users/Team$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/Team$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->contentOwnerTeamInfo:Lcom/dropbox/core/v2/users/Team;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StructSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 425
    :cond_8
    if-nez p3, :cond_0

    .line 426
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0
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
    .line 383
    check-cast p1, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
