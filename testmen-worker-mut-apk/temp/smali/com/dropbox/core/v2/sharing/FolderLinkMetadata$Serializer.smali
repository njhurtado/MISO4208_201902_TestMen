.class Lcom/dropbox/core/v2/sharing/FolderLinkMetadata$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "FolderLinkMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/FolderLinkMetadata$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 315
    new-instance v0, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FolderLinkMetadata$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;
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
    .line 357
    const/4 v10, 0x0

    .line 358
    .local v10, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 359
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 360
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v10

    .line 361
    const-string v11, "folder"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 362
    const/4 v10, 0x0

    .line 365
    :cond_0
    if-nez v10, :cond_e

    .line 366
    const/4 v1, 0x0

    .line 367
    .local v1, "f_url":Ljava/lang/String;
    const/4 v2, 0x0

    .line 368
    .local v2, "f_name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 369
    .local v3, "f_linkPermissions":Lcom/dropbox/core/v2/sharing/LinkPermissions;
    const/4 v4, 0x0

    .line 370
    .local v4, "f_id":Ljava/lang/String;
    const/4 v5, 0x0

    .line 371
    .local v5, "f_expires":Ljava/util/Date;
    const/4 v6, 0x0

    .line 372
    .local v6, "f_pathLower":Ljava/lang/String;
    const/4 v7, 0x0

    .line 373
    .local v7, "f_teamMemberInfo":Lcom/dropbox/core/v2/sharing/TeamMemberInfo;
    const/4 v8, 0x0

    .line 374
    .local v8, "f_contentOwnerTeamInfo":Lcom/dropbox/core/v2/users/Team;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v11

    sget-object v12, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v11, v12, :cond_9

    .line 375
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v9

    .line 376
    .local v9, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 377
    const-string v11, "url"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 378
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v11

    invoke-virtual {v11, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_url":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "f_url":Ljava/lang/String;
    goto :goto_0

    .line 380
    :cond_1
    const-string v11, "name"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 381
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v11

    invoke-virtual {v11, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_name":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2    # "f_name":Ljava/lang/String;
    goto :goto_0

    .line 383
    :cond_2
    const-string v11, "link_permissions"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 384
    sget-object v11, Lcom/dropbox/core/v2/sharing/LinkPermissions$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkPermissions$Serializer;

    invoke-virtual {v11, p1}, Lcom/dropbox/core/v2/sharing/LinkPermissions$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "f_linkPermissions":Lcom/dropbox/core/v2/sharing/LinkPermissions;
    check-cast v3, Lcom/dropbox/core/v2/sharing/LinkPermissions;

    .restart local v3    # "f_linkPermissions":Lcom/dropbox/core/v2/sharing/LinkPermissions;
    goto :goto_0

    .line 386
    :cond_3
    const-string v11, "id"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 387
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

    .line 389
    :cond_4
    const-string v11, "expires"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 390
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

    .line 392
    :cond_5
    const-string v11, "path_lower"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 393
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

    .line 395
    :cond_6
    const-string v11, "team_member_info"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 396
    sget-object v11, Lcom/dropbox/core/v2/sharing/TeamMemberInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/TeamMemberInfo$Serializer;

    invoke-static {v11}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v11

    invoke-virtual {v11, p1}, Lcom/dropbox/core/stone/StructSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "f_teamMemberInfo":Lcom/dropbox/core/v2/sharing/TeamMemberInfo;
    check-cast v7, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;

    .restart local v7    # "f_teamMemberInfo":Lcom/dropbox/core/v2/sharing/TeamMemberInfo;
    goto/16 :goto_0

    .line 398
    :cond_7
    const-string v11, "content_owner_team_info"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 399
    sget-object v11, Lcom/dropbox/core/v2/users/Team$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/Team$Serializer;

    invoke-static {v11}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v11

    invoke-virtual {v11, p1}, Lcom/dropbox/core/stone/StructSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "f_contentOwnerTeamInfo":Lcom/dropbox/core/v2/users/Team;
    check-cast v8, Lcom/dropbox/core/v2/users/Team;

    .restart local v8    # "f_contentOwnerTeamInfo":Lcom/dropbox/core/v2/users/Team;
    goto/16 :goto_0

    .line 402
    :cond_8
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto/16 :goto_0

    .line 405
    .end local v9    # "field":Ljava/lang/String;
    :cond_9
    if-nez v1, :cond_a

    .line 406
    new-instance v11, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v12, "Required field \"url\" missing."

    invoke-direct {v11, p1, v12}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v11

    .line 408
    :cond_a
    if-nez v2, :cond_b

    .line 409
    new-instance v11, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v12, "Required field \"name\" missing."

    invoke-direct {v11, p1, v12}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v11

    .line 411
    :cond_b
    if-nez v3, :cond_c

    .line 412
    new-instance v11, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v12, "Required field \"link_permissions\" missing."

    invoke-direct {v11, p1, v12}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v11

    .line 414
    :cond_c
    new-instance v0, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;

    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/LinkPermissions;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/TeamMemberInfo;Lcom/dropbox/core/v2/users/Team;)V

    .line 419
    .local v0, "value":Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;
    if-nez p2, :cond_d

    .line 420
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 422
    :cond_d
    return-object v0

    .line 417
    .end local v0    # "value":Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;
    .end local v1    # "f_url":Ljava/lang/String;
    .end local v2    # "f_name":Ljava/lang/String;
    .end local v3    # "f_linkPermissions":Lcom/dropbox/core/v2/sharing/LinkPermissions;
    .end local v4    # "f_id":Ljava/lang/String;
    .end local v5    # "f_expires":Ljava/util/Date;
    .end local v6    # "f_pathLower":Ljava/lang/String;
    .end local v7    # "f_teamMemberInfo":Lcom/dropbox/core/v2/sharing/TeamMemberInfo;
    .end local v8    # "f_contentOwnerTeamInfo":Lcom/dropbox/core/v2/users/Team;
    :cond_e
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
    .line 314
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 319
    if-nez p3, :cond_0

    .line 320
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 322
    :cond_0
    const-string v0, "folder"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 323
    const-string v0, "url"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 324
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 325
    const-string v0, "name"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 326
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 327
    const-string v0, "link_permissions"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 328
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkPermissions$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkPermissions$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->linkPermissions:Lcom/dropbox/core/v2/sharing/LinkPermissions;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/LinkPermissions$Serializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 329
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->id:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 330
    const-string v0, "id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 331
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 333
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->expires:Ljava/util/Date;

    if-eqz v0, :cond_2

    .line 334
    const-string v0, "expires"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 335
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->expires:Ljava/util/Date;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 337
    :cond_2
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->pathLower:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 338
    const-string v0, "path_lower"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 339
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->pathLower:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 341
    :cond_3
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->teamMemberInfo:Lcom/dropbox/core/v2/sharing/TeamMemberInfo;

    if-eqz v0, :cond_4

    .line 342
    const-string v0, "team_member_info"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 343
    sget-object v0, Lcom/dropbox/core/v2/sharing/TeamMemberInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/TeamMemberInfo$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->teamMemberInfo:Lcom/dropbox/core/v2/sharing/TeamMemberInfo;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StructSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 345
    :cond_4
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->contentOwnerTeamInfo:Lcom/dropbox/core/v2/users/Team;

    if-eqz v0, :cond_5

    .line 346
    const-string v0, "content_owner_team_info"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 347
    sget-object v0, Lcom/dropbox/core/v2/users/Team$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/Team$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->contentOwnerTeamInfo:Lcom/dropbox/core/v2/users/Team;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StructSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 349
    :cond_5
    if-nez p3, :cond_6

    .line 350
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 352
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
    .line 314
    check-cast p1, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
