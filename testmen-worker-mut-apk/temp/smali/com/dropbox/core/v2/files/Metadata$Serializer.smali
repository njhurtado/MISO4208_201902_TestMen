.class Lcom/dropbox/core/v2/files/Metadata$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "Metadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/Metadata;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/Metadata$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 283
    new-instance v0, Lcom/dropbox/core/v2/files/Metadata$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/Metadata$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/Metadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/Metadata$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/Metadata;
    .locals 10
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "collapsed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 324
    const/4 v5, 0x0

    .line 325
    .local v5, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 326
    invoke-static {p1}, Lcom/dropbox/core/v2/files/Metadata$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 327
    invoke-static {p1}, Lcom/dropbox/core/v2/files/Metadata$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v5

    .line 328
    const-string v7, ""

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 329
    const/4 v5, 0x0

    .line 332
    :cond_0
    if-nez v5, :cond_8

    .line 333
    const/4 v0, 0x0

    .line 334
    .local v0, "f_name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 335
    .local v3, "f_pathLower":Ljava/lang/String;
    const/4 v2, 0x0

    .line 336
    .local v2, "f_pathDisplay":Ljava/lang/String;
    const/4 v1, 0x0

    .line 337
    .local v1, "f_parentSharedFolderId":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v7

    sget-object v8, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v7, v8, :cond_5

    .line 338
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v4

    .line 339
    .local v4, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 340
    const-string v7, "name"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 341
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_name":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "f_name":Ljava/lang/String;
    goto :goto_0

    .line 343
    :cond_1
    const-string v7, "path_lower"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 344
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-static {v7}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "f_pathLower":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3    # "f_pathLower":Ljava/lang/String;
    goto :goto_0

    .line 346
    :cond_2
    const-string v7, "path_display"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 347
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-static {v7}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_pathDisplay":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2    # "f_pathDisplay":Ljava/lang/String;
    goto :goto_0

    .line 349
    :cond_3
    const-string v7, "parent_shared_folder_id"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 350
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-static {v7}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_parentSharedFolderId":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "f_parentSharedFolderId":Ljava/lang/String;
    goto :goto_0

    .line 353
    :cond_4
    invoke-static {p1}, Lcom/dropbox/core/v2/files/Metadata$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 356
    .end local v4    # "field":Ljava/lang/String;
    :cond_5
    if-nez v0, :cond_6

    .line 357
    new-instance v7, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v8, "Required field \"name\" missing."

    invoke-direct {v7, p1, v8}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v7

    .line 359
    :cond_6
    new-instance v6, Lcom/dropbox/core/v2/files/Metadata;

    invoke-direct {v6, v0, v3, v2, v1}, Lcom/dropbox/core/v2/files/Metadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    .end local v0    # "f_name":Ljava/lang/String;
    .end local v1    # "f_parentSharedFolderId":Ljava/lang/String;
    .end local v2    # "f_pathDisplay":Ljava/lang/String;
    .end local v3    # "f_pathLower":Ljava/lang/String;
    .local v6, "value":Lcom/dropbox/core/v2/files/Metadata;
    :goto_1
    if-nez p2, :cond_7

    .line 377
    invoke-static {p1}, Lcom/dropbox/core/v2/files/Metadata$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 379
    :cond_7
    return-object v6

    .line 361
    .end local v6    # "value":Lcom/dropbox/core/v2/files/Metadata;
    :cond_8
    const-string v7, ""

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 362
    sget-object v7, Lcom/dropbox/core/v2/files/Metadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/Metadata$Serializer;

    invoke-virtual {v7, p1, v8}, Lcom/dropbox/core/v2/files/Metadata$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/Metadata;

    move-result-object v6

    .restart local v6    # "value":Lcom/dropbox/core/v2/files/Metadata;
    goto :goto_1

    .line 364
    .end local v6    # "value":Lcom/dropbox/core/v2/files/Metadata;
    :cond_9
    const-string v7, "file"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 365
    sget-object v7, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FileMetadata$Serializer;

    invoke-virtual {v7, p1, v8}, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/FileMetadata;

    move-result-object v6

    .restart local v6    # "value":Lcom/dropbox/core/v2/files/Metadata;
    goto :goto_1

    .line 367
    .end local v6    # "value":Lcom/dropbox/core/v2/files/Metadata;
    :cond_a
    const-string v7, "folder"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 368
    sget-object v7, Lcom/dropbox/core/v2/files/FolderMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FolderMetadata$Serializer;

    invoke-virtual {v7, p1, v8}, Lcom/dropbox/core/v2/files/FolderMetadata$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/FolderMetadata;

    move-result-object v6

    .restart local v6    # "value":Lcom/dropbox/core/v2/files/Metadata;
    goto :goto_1

    .line 370
    .end local v6    # "value":Lcom/dropbox/core/v2/files/Metadata;
    :cond_b
    const-string v7, "deleted"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 371
    sget-object v7, Lcom/dropbox/core/v2/files/DeletedMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeletedMetadata$Serializer;

    invoke-virtual {v7, p1, v8}, Lcom/dropbox/core/v2/files/DeletedMetadata$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/DeletedMetadata;

    move-result-object v6

    .restart local v6    # "value":Lcom/dropbox/core/v2/files/Metadata;
    goto :goto_1

    .line 374
    .end local v6    # "value":Lcom/dropbox/core/v2/files/Metadata;
    :cond_c
    new-instance v7, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No subtype found that matches tag: \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p1, v8}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v7
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
    .line 282
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/Metadata$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/Metadata;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/Metadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/files/Metadata;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 287
    instance-of v0, p1, Lcom/dropbox/core/v2/files/FileMetadata;

    if-eqz v0, :cond_1

    .line 288
    sget-object v0, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FileMetadata$Serializer;

    check-cast p1, Lcom/dropbox/core/v2/files/FileMetadata;

    .end local p1    # "value":Lcom/dropbox/core/v2/files/Metadata;
    invoke-virtual {v0, p1, p2, p3}, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->serialize(Lcom/dropbox/core/v2/files/FileMetadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 291
    .restart local p1    # "value":Lcom/dropbox/core/v2/files/Metadata;
    :cond_1
    instance-of v0, p1, Lcom/dropbox/core/v2/files/FolderMetadata;

    if-eqz v0, :cond_2

    .line 292
    sget-object v0, Lcom/dropbox/core/v2/files/FolderMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FolderMetadata$Serializer;

    check-cast p1, Lcom/dropbox/core/v2/files/FolderMetadata;

    .end local p1    # "value":Lcom/dropbox/core/v2/files/Metadata;
    invoke-virtual {v0, p1, p2, p3}, Lcom/dropbox/core/v2/files/FolderMetadata$Serializer;->serialize(Lcom/dropbox/core/v2/files/FolderMetadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    goto :goto_0

    .line 295
    .restart local p1    # "value":Lcom/dropbox/core/v2/files/Metadata;
    :cond_2
    instance-of v0, p1, Lcom/dropbox/core/v2/files/DeletedMetadata;

    if-eqz v0, :cond_3

    .line 296
    sget-object v0, Lcom/dropbox/core/v2/files/DeletedMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeletedMetadata$Serializer;

    check-cast p1, Lcom/dropbox/core/v2/files/DeletedMetadata;

    .end local p1    # "value":Lcom/dropbox/core/v2/files/Metadata;
    invoke-virtual {v0, p1, p2, p3}, Lcom/dropbox/core/v2/files/DeletedMetadata$Serializer;->serialize(Lcom/dropbox/core/v2/files/DeletedMetadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    goto :goto_0

    .line 299
    .restart local p1    # "value":Lcom/dropbox/core/v2/files/Metadata;
    :cond_3
    if-nez p3, :cond_4

    .line 300
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 302
    :cond_4
    const-string v0, "name"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 303
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/Metadata;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 304
    iget-object v0, p1, Lcom/dropbox/core/v2/files/Metadata;->pathLower:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 305
    const-string v0, "path_lower"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 306
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/Metadata;->pathLower:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 308
    :cond_5
    iget-object v0, p1, Lcom/dropbox/core/v2/files/Metadata;->pathDisplay:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 309
    const-string v0, "path_display"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 310
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/Metadata;->pathDisplay:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 312
    :cond_6
    iget-object v0, p1, Lcom/dropbox/core/v2/files/Metadata;->parentSharedFolderId:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 313
    const-string v0, "parent_shared_folder_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 314
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/Metadata;->parentSharedFolderId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 316
    :cond_7
    if-nez p3, :cond_0

    .line 317
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0
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
    .line 282
    check-cast p1, Lcom/dropbox/core/v2/files/Metadata;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/files/Metadata$Serializer;->serialize(Lcom/dropbox/core/v2/files/Metadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
